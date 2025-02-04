# Description: This script is used to generate the nodes of the moulins in the glacier.

# ------------------ Libraries ------------------
import numpy as np 
import matplotlib.pyplot as plt 
from netCDF4 import Dataset
import xarray as xr
from scipy.spatial import cKDTree
from skimage.segmentation import watershed
from skimage.morphology import local_minima
from scipy.ndimage import label

# ------------------ Functions ------------------

class MoulinNodesGenerator:
    """
    This class is used to generate the nodes of the moulins in the glacier
    based on a) the lowest elevation in a basin created by the watershed algorithm
    or b) randomly selected points 
    """
    def __init__(self, nc_path, mesh_path):
        self.nc_path = nc_path
        self.mesh_path = mesh_path
        self.usurf, self.x, self.y, self.mask = self.read_nc_files()
        self.xmesh, self.ymesh = self.read_mesh()

    def read_nc_files(self):
        """
        Read the netCDF files and return the data
        """
        # Load the netCDF file
        ds = xr.open_dataset(self.nc_path)
        usurf = ds['usurf']
        x = ds['x']
        y = ds['y']
        mask = ds['icemask']

        return usurf, x, y, mask
    
    def plot_usurf(self):
        """
        Plot the surface of the glacier
        """
        # Plot the surface of the glacier
        fig, ax = plt.subplots(figsize=(10, 10))

        # Plot the surface
        c = ax.pcolormesh(self.x, self.y, self.usurf*self.mask, cmap='viridis')
        ax.set_title('Surface of the glacier')
        ax.set_xlabel('x')
        ax.set_ylabel('y')
        plt.colorbar(c, ax=ax, label='Elevation (m)')
        plt.show()

    def generate_basins(self):
        """
        Generate the basins of the glacier
        using the watershed algorith from skimage library.
        """

        # Apply glacier mask (only process ice-covered areas)
        usurf = np.where(self.mask==1, self.usurf, np.nan)

        # Identify local minima as markers
        markers = label(local_minima(usurf, connectivity=0.001))[0]

        # Apply watershed algorithm
        segments = watershed(usurf, markers, mask=~np.isnan(usurf))

        return segments
    
    def plot_basins(self, segments):
        """
        Plot the basins
        """
        fig, axs = plt.subplots(figsize=(16, 7),
                                ncols=2)

        # Plot the surface of the glacier
        c = axs[0].pcolormesh(self.x, self.y, self.usurf*self.mask, cmap='viridis')
        axs[0].set_title('Surface of the glacier')
        axs[0].set_xlabel('x')
        axs[0].set_ylabel('y')
        cb1 = plt.colorbar(c, ax=axs[0], label='Elevation (m)')

        # Plot the basins
        b = axs[1].imshow(segments, 
                      extent=[self.x.min(), self.x.max(), self.y.min(), self.y.max()], 
                      origin='lower', 
                      alpha=0.9, 
                      cmap='tab20')
        #axs[1].invert_yaxis()
        axs[1].set_title('Basins')
        axs[1].set_xlabel('x') 
        axs[1].set_ylabel('y')
        cb2 = plt.colorbar(b, ax=axs[1], label='Basin ID')
        plt.show()

    def generate_basin_moulins(self, segments, elevation_treshold = 2000):
        """
        Generate the nodes of the moulins as the lowest elevation in each basin.    
        """
        # Get the unique values of the segments
        unique_segments = np.unique(segments[segments > 0])

        # Create an empty list to store the moulins
        moulins = []

        usurf = np.where(self.mask==1, self.usurf, np.nan)
        # Iterate over the unique segments
        for segment in unique_segments:

            # Get the coordinates of the segment
            y, x = np.where(segments == segment)

            # Get the elevation of the segment
            elevations = usurf[y, x]

            # Get the minimum elevation
            min_elevation = np.min(elevations)

            # Check if the minimum elevation is below the treshold
            if min_elevation < elevation_treshold:
                # Get the index of the minimum elevation
                index = np.argmin(elevations)

                # Get the coordinates of the minimum elevation
                min_x = x[index]
                min_y = y[index]

                moulins.append((min_x, min_y))

        return moulins
    
    def generate_random_moulins(self, number_of_moulins = 30, power = 4, elevation_treshold = 3000):
        """
        Generate the nodes of the moulins randomly
        with probabilty depending with the elevation.
        """
        x, y = np.meshgrid(self.x, self.y)
        x = x.flatten()
        y = y.flatten()
        usurf = self.usurf.values.flatten()
        mask = self.mask.values.flatten()

        valid_indices = np.where(usurf*mask != 0)

        x = x[valid_indices]
        y = y[valid_indices]
        usurf = usurf[valid_indices]

        if elevation_treshold is not False:
            valid_indices = np.where(usurf <= elevation_treshold)
            x = x[valid_indices]
            y = y[valid_indices]
            usurf = usurf[valid_indices]

        inverted_surf = np.max(usurf) - usurf
        inverted_surf = inverted_surf**power
        probabilities = inverted_surf / np.sum(inverted_surf)

        selected_indices = np.random.choice(len(usurf), size=number_of_moulins, p=probabilities)
        selected_x = x[selected_indices]
        selected_y = y[selected_indices]

        return selected_x, selected_y

    def read_mesh(self):
        """
        Read the mesh text file
        """
        # Open the file
        xmesh = np.loadtxt(self.mesh_path, usecols=(2))
        ymesh = np.loadtxt(self.mesh_path, usecols=(3))
        
        return xmesh, ymesh
    
    def interp_basin_to_mesh_coords(self, moulins):
        """
        Interpolate the moulins to the mesh coordinates
        """
        x = [self.x[moulin[0]] for moulin in moulins]
        y = [self.y[moulin[1]] for moulin in moulins]
        coordinates = np.column_stack((x, y))
        mesh_coordinates = np.column_stack((self.xmesh, self.ymesh))

        # Create a KDTree
        tree = cKDTree(mesh_coordinates)
        distances, indices = tree.query(coordinates)
        nearest_nodes = np.column_stack((self.xmesh[indices], self.ymesh[indices]))  

        return nearest_nodes, coordinates

    
    def interp_random_to_mesh_coords(self, selected_x, selected_y):
        """
        Interpolate the moulins to the mesh coordinates
        """

        coordinates = np.column_stack((selected_x, selected_y))
        mesh_coordinates = np.column_stack((self.xmesh, self.ymesh))

        # Create a KDTree
        tree = cKDTree(mesh_coordinates)
        distances, indices = tree.query(coordinates)
        nearest_nodes = np.column_stack((self.xmesh[indices], self.ymesh[indices]))  

        return nearest_nodes
    
    def plot_basin_moulins(self, moulins, nearest_nodes, segments, coordinates):
        """
        Plot the moulins
        """
        fig, ax = plt.subplots(figsize=(10, 10))

        # Plot the surface of the glacier
        #c = ax.pcolormesh(self.x, self.y, self.usurf*self.mask, cmap='viridis')
        #ax.set_title('Surface of the glacier')
        #ax.set_xlabel('x')
        #ax.set_ylabel('y')
        #plt.colorbar(c, ax=ax, label='Elevation (m)')

        # Plot the basins
        b = ax.imshow(segments, 
                      extent=[self.x.min(), self.x.max(), self.y.min(), self.y.max()], 
                      origin='lower', 
                      alpha=0.9, 
                      cmap='tab20')

        # Plot the moulins
        first_moulin = moulins[0]
        ax.scatter(self.x[first_moulin[0]], self.y[first_moulin[1]], color='red', label='Moulins')

        for moulin in moulins[1:]:
            ax.scatter(self.x[moulin[0]], self.y[moulin[1]], color='red', s=100)

        ax.scatter(nearest_nodes[:, 0], nearest_nodes[:, 1], color='blue', label='Nearest nodes')
        ax.scatter(coordinates[:, 0], coordinates[:, 1], color='green', label='Coordinates')
        ax.legend()
        plt.show()
    
    def plot_random_moulins(self, selected_x, selected_y, nearest_nodes):
        """
        Plot the moulins
        """
        fig, ax = plt.subplots(figsize=(10, 10))

        # Plot the surface of the glacier
        c = ax.pcolormesh(self.x, self.y, self.usurf*self.mask, cmap='viridis')
        ax.set_title('Surface of the glacier')
        ax.set_xlabel('x')
        ax.set_ylabel('y')
        plt.colorbar(c, ax=ax, label='Elevation (m)')

        # Plot the moulins
        ax.scatter(selected_x, selected_y, color='red', label='Moulins')
        ax.scatter(nearest_nodes[:, 0], nearest_nodes[:, 1], color='blue', label='Nearest nodes')
        ax.legend()
        plt.show()

    def save_to_file(self, nearest_nodes, output_path):
        """
        Save the nearest nodes to a file
        """
        np.savetxt(output_path, nearest_nodes, fmt='%f', delimiter=' ')

# ------------------ Main ------------------

# Give the name of the glacier directory to access the netCDF file
#glacier = input("Enter the glacier directory name: ")
glacier = 'aletsch'

# Define the path to the netCDF file
nc_path = f'/opt/work/elmer_stuff/0_mesh_time/{glacier}/input_saved.nc'
mesh_path = 'mainmesh/mesh.nodes'
#output_path = 'moulin_coords.txt'

# Create an instance of the class
moulin_generator = MoulinNodesGenerator(nc_path, mesh_path)

# Plot the surface of the glacier
moulin_generator.plot_usurf()

# Generate the basins
segments = moulin_generator.generate_basins()

# Plot the basins
moulin_generator.plot_basins(segments)

# Generate moulins
moulins = moulin_generator.generate_basin_moulins(segments, elevation_treshold=2800)

# Read the mesh file
moulin_generator.read_mesh()

# Interpolate moulin to mesh coordinates
nearest_nodes, coordinates = moulin_generator.interp_basin_to_mesh_coords(moulins)

# Plot moulins
moulin_generator.plot_basin_moulins(moulins, nearest_nodes, segments, coordinates)


# Generate the moulins
#selected_x, selected_y = moulin_generator.generate_moulins(number_of_moulins=30, 
#                                                           power=4, 
#                                                           elevation_treshold=2500)

# Interpolate the moulins to the mesh coordinates
#nearest_nodes = moulin_generator.interp_to_mesh_coords(selected_x, selected_y)

# Plot the moulins
#moulin_generator.plot_moulins(selected_x, selected_y, nearest_nodes)

# Save the nearest nodes to a file
#moulin_generator.save_to_file(nearest_nodes, output_path)
