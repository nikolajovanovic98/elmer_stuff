// This a a geo file created using the python script Contour2geo.py // 
Mesh.Algorithm=5; 
// To controle the element size, one can directly modify the lc value in the geo file // 
lc = 150.0 ; 
// Mesh size near the boundary from prescribed value  //
Mesh.CharacteristicLengthFromCurvature = 0; 
Mesh.CharacteristicLengthFromPoints = 1; 
// Give a backgroung field with uniform value for the mesh size  // 
Mesh.CharacteristicLengthExtendFromBoundary = 0; 
Field[1] = MathEval; 
Field[1].F = Sprintf("%g",lc); 
Background Field = 1; 
Point(1) = { 636518.4375, 5190960.0, 0.0, lc}; 
Point(2) = { 636568.4375, 5190960.0, 0.0, lc}; 
Point(3) = { 636568.4375, 5190935.0, 0.0, lc}; 
Point(4) = { 636593.4375, 5190935.0, 0.0, lc}; 
Point(5) = { 636593.4375, 5190860.0, 0.0, lc}; 
Point(6) = { 636668.4375, 5190860.0, 0.0, lc}; 
Point(7) = { 636668.4375, 5190785.0, 0.0, lc}; 
Point(8) = { 636618.4375, 5190785.0, 0.0, lc}; 
Point(9) = { 636618.4375, 5190760.0, 0.0, lc}; 
Point(10) = { 636668.4375, 5190760.0, 0.0, lc}; 
Point(11) = { 636668.4375, 5190685.0, 0.0, lc}; 
Point(12) = { 636618.4375, 5190685.0, 0.0, lc}; 
Point(13) = { 636618.4375, 5190635.0, 0.0, lc}; 
Point(14) = { 636643.4375, 5190635.0, 0.0, lc}; 
Point(15) = { 636643.4375, 5190610.0, 0.0, lc}; 
Point(16) = { 636618.4375, 5190610.0, 0.0, lc}; 
Point(17) = { 636618.4375, 5190585.0, 0.0, lc}; 
Point(18) = { 636593.4375, 5190585.0, 0.0, lc}; 
Point(19) = { 636593.4375, 5190535.0, 0.0, lc}; 
Point(20) = { 636568.4375, 5190535.0, 0.0, lc}; 
Point(21) = { 636568.4375, 5190485.0, 0.0, lc}; 
Point(22) = { 636543.4375, 5190485.0, 0.0, lc}; 
Point(23) = { 636543.4375, 5190410.0, 0.0, lc}; 
Point(24) = { 636593.4375, 5190410.0, 0.0, lc}; 
Point(25) = { 636593.4375, 5190335.0, 0.0, lc}; 
Point(26) = { 636568.4375, 5190335.0, 0.0, lc}; 
Point(27) = { 636568.4375, 5190310.0, 0.0, lc}; 
Point(28) = { 636543.4375, 5190310.0, 0.0, lc}; 
Point(29) = { 636543.4375, 5190260.0, 0.0, lc}; 
Point(30) = { 636518.4375, 5190260.0, 0.0, lc}; 
Point(31) = { 636518.4375, 5190185.0, 0.0, lc}; 
Point(32) = { 636543.4375, 5190185.0, 0.0, lc}; 
Point(33) = { 636543.4375, 5190160.0, 0.0, lc}; 
Point(34) = { 636593.4375, 5190160.0, 0.0, lc}; 
Point(35) = { 636593.4375, 5190210.0, 0.0, lc}; 
Point(36) = { 636618.4375, 5190210.0, 0.0, lc}; 
Point(37) = { 636618.4375, 5190160.0, 0.0, lc}; 
Point(38) = { 636643.4375, 5190160.0, 0.0, lc}; 
Point(39) = { 636643.4375, 5190135.0, 0.0, lc}; 
Point(40) = { 636668.4375, 5190135.0, 0.0, lc}; 
Point(41) = { 636668.4375, 5190110.0, 0.0, lc}; 
Point(42) = { 636693.4375, 5190110.0, 0.0, lc}; 
Point(43) = { 636693.4375, 5190085.0, 0.0, lc}; 
Point(44) = { 636768.4375, 5190085.0, 0.0, lc}; 
Point(45) = { 636768.4375, 5190060.0, 0.0, lc}; 
Point(46) = { 636843.4375, 5190060.0, 0.0, lc}; 
Point(47) = { 636843.4375, 5190035.0, 0.0, lc}; 
Point(48) = { 636893.4375, 5190035.0, 0.0, lc}; 
Point(49) = { 636893.4375, 5190010.0, 0.0, lc}; 
Point(50) = { 636943.4375, 5190010.0, 0.0, lc}; 
Point(51) = { 636943.4375, 5189985.0, 0.0, lc}; 
Point(52) = { 636968.4375, 5189985.0, 0.0, lc}; 
Point(53) = { 636968.4375, 5189960.0, 0.0, lc}; 
Point(54) = { 636993.4375, 5189960.0, 0.0, lc}; 
Point(55) = { 636993.4375, 5189935.0, 0.0, lc}; 
Point(56) = { 636893.4375, 5189935.0, 0.0, lc}; 
Point(57) = { 636893.4375, 5189860.0, 0.0, lc}; 
Point(58) = { 636918.4375, 5189860.0, 0.0, lc}; 
Point(59) = { 636918.4375, 5189810.0, 0.0, lc}; 
Point(60) = { 636968.4375, 5189810.0, 0.0, lc}; 
Point(61) = { 636968.4375, 5189710.0, 0.0, lc}; 
Point(62) = { 636993.4375, 5189710.0, 0.0, lc}; 
Point(63) = { 636993.4375, 5189510.0, 0.0, lc}; 
Point(64) = { 637018.4375, 5189510.0, 0.0, lc}; 
Point(65) = { 637018.4375, 5189435.0, 0.0, lc}; 
Point(66) = { 637043.4375, 5189435.0, 0.0, lc}; 
Point(67) = { 637043.4375, 5189410.0, 0.0, lc}; 
Point(68) = { 637068.4375, 5189410.0, 0.0, lc}; 
Point(69) = { 637068.4375, 5189335.0, 0.0, lc}; 
Point(70) = { 637118.4375, 5189335.0, 0.0, lc}; 
Point(71) = { 637118.4375, 5189260.0, 0.0, lc}; 
Point(72) = { 637143.4375, 5189260.0, 0.0, lc}; 
Point(73) = { 637143.4375, 5189185.0, 0.0, lc}; 
Point(74) = { 637168.4375, 5189185.0, 0.0, lc}; 
Point(75) = { 637168.4375, 5189160.0, 0.0, lc}; 
Point(76) = { 637193.4375, 5189160.0, 0.0, lc}; 
Point(77) = { 637193.4375, 5189135.0, 0.0, lc}; 
Point(78) = { 637218.4375, 5189135.0, 0.0, lc}; 
Point(79) = { 637218.4375, 5189110.0, 0.0, lc}; 
Point(80) = { 637268.4375, 5189110.0, 0.0, lc}; 
Point(81) = { 637268.4375, 5189060.0, 0.0, lc}; 
Point(82) = { 637293.4375, 5189060.0, 0.0, lc}; 
Point(83) = { 637293.4375, 5189035.0, 0.0, lc}; 
Point(84) = { 637318.4375, 5189035.0, 0.0, lc}; 
Point(85) = { 637318.4375, 5189010.0, 0.0, lc}; 
Point(86) = { 637343.4375, 5189010.0, 0.0, lc}; 
Point(87) = { 637343.4375, 5188985.0, 0.0, lc}; 
Point(88) = { 637368.4375, 5188985.0, 0.0, lc}; 
Point(89) = { 637368.4375, 5188960.0, 0.0, lc}; 
Point(90) = { 637418.4375, 5188960.0, 0.0, lc}; 
Point(91) = { 637418.4375, 5188910.0, 0.0, lc}; 
Point(92) = { 637443.4375, 5188910.0, 0.0, lc}; 
Point(93) = { 637443.4375, 5188885.0, 0.0, lc}; 
Point(94) = { 637468.4375, 5188885.0, 0.0, lc}; 
Point(95) = { 637468.4375, 5188860.0, 0.0, lc}; 
Point(96) = { 637518.4375, 5188860.0, 0.0, lc}; 
Point(97) = { 637518.4375, 5188835.0, 0.0, lc}; 
Point(98) = { 637568.4375, 5188835.0, 0.0, lc}; 
Point(99) = { 637568.4375, 5188810.0, 0.0, lc}; 
Point(100) = { 637593.4375, 5188810.0, 0.0, lc}; 
Point(101) = { 637593.4375, 5188760.0, 0.0, lc}; 
Point(102) = { 637618.4375, 5188760.0, 0.0, lc}; 
Point(103) = { 637618.4375, 5188735.0, 0.0, lc}; 
Point(104) = { 637768.4375, 5188735.0, 0.0, lc}; 
Point(105) = { 637768.4375, 5188710.0, 0.0, lc}; 
Point(106) = { 637818.4375, 5188710.0, 0.0, lc}; 
Point(107) = { 637818.4375, 5188685.0, 0.0, lc}; 
Point(108) = { 637893.4375, 5188685.0, 0.0, lc}; 
Point(109) = { 637893.4375, 5188660.0, 0.0, lc}; 
Point(110) = { 637918.4375, 5188660.0, 0.0, lc}; 
Point(111) = { 637918.4375, 5188610.0, 0.0, lc}; 
Point(112) = { 637943.4375, 5188610.0, 0.0, lc}; 
Point(113) = { 637943.4375, 5188585.0, 0.0, lc}; 
Point(114) = { 637968.4375, 5188585.0, 0.0, lc}; 
Point(115) = { 637968.4375, 5188560.0, 0.0, lc}; 
Point(116) = { 638018.4375, 5188560.0, 0.0, lc}; 
Point(117) = { 638018.4375, 5188535.0, 0.0, lc}; 
Point(118) = { 638068.4375, 5188535.0, 0.0, lc}; 
Point(119) = { 638068.4375, 5188510.0, 0.0, lc}; 
Point(120) = { 638093.4375, 5188510.0, 0.0, lc}; 
Point(121) = { 638093.4375, 5188460.0, 0.0, lc}; 
Point(122) = { 638168.4375, 5188460.0, 0.0, lc}; 
Point(123) = { 638168.4375, 5188435.0, 0.0, lc}; 
Point(124) = { 638268.4375, 5188435.0, 0.0, lc}; 
Point(125) = { 638268.4375, 5188410.0, 0.0, lc}; 
Point(126) = { 638343.4375, 5188410.0, 0.0, lc}; 
Point(127) = { 638343.4375, 5188385.0, 0.0, lc}; 
Point(128) = { 638368.4375, 5188385.0, 0.0, lc}; 
Point(129) = { 638368.4375, 5188310.0, 0.0, lc}; 
Point(130) = { 638343.4375, 5188310.0, 0.0, lc}; 
Point(131) = { 638343.4375, 5188285.0, 0.0, lc}; 
Point(132) = { 638318.4375, 5188285.0, 0.0, lc}; 
Point(133) = { 638318.4375, 5188260.0, 0.0, lc}; 
Point(134) = { 637868.4375, 5188260.0, 0.0, lc}; 
Point(135) = { 637868.4375, 5188285.0, 0.0, lc}; 
Point(136) = { 637793.4375, 5188285.0, 0.0, lc}; 
Point(137) = { 637793.4375, 5188310.0, 0.0, lc}; 
Point(138) = { 637743.4375, 5188310.0, 0.0, lc}; 
Point(139) = { 637743.4375, 5188360.0, 0.0, lc}; 
Point(140) = { 637568.4375, 5188360.0, 0.0, lc}; 
Point(141) = { 637568.4375, 5188285.0, 0.0, lc}; 
Point(142) = { 637618.4375, 5188285.0, 0.0, lc}; 
Point(143) = { 637618.4375, 5188210.0, 0.0, lc}; 
Point(144) = { 637593.4375, 5188210.0, 0.0, lc}; 
Point(145) = { 637593.4375, 5188160.0, 0.0, lc}; 
Point(146) = { 637568.4375, 5188160.0, 0.0, lc}; 
Point(147) = { 637568.4375, 5188135.0, 0.0, lc}; 
Point(148) = { 637493.4375, 5188135.0, 0.0, lc}; 
Point(149) = { 637493.4375, 5188110.0, 0.0, lc}; 
Point(150) = { 637468.4375, 5188110.0, 0.0, lc}; 
Point(151) = { 637468.4375, 5188085.0, 0.0, lc}; 
Point(152) = { 637343.4375, 5188085.0, 0.0, lc}; 
Point(153) = { 637343.4375, 5188110.0, 0.0, lc}; 
Point(154) = { 637268.4375, 5188110.0, 0.0, lc}; 
Point(155) = { 637268.4375, 5188085.0, 0.0, lc}; 
Point(156) = { 637143.4375, 5188085.0, 0.0, lc}; 
Point(157) = { 637143.4375, 5188110.0, 0.0, lc}; 
Point(158) = { 637118.4375, 5188110.0, 0.0, lc}; 
Point(159) = { 637118.4375, 5188210.0, 0.0, lc}; 
Point(160) = { 637068.4375, 5188210.0, 0.0, lc}; 
Point(161) = { 637068.4375, 5188235.0, 0.0, lc}; 
Point(162) = { 637018.4375, 5188235.0, 0.0, lc}; 
Point(163) = { 637018.4375, 5188210.0, 0.0, lc}; 
Point(164) = { 636993.4375, 5188210.0, 0.0, lc}; 
Point(165) = { 636993.4375, 5188160.0, 0.0, lc}; 
Point(166) = { 636968.4375, 5188160.0, 0.0, lc}; 
Point(167) = { 636968.4375, 5188135.0, 0.0, lc}; 
Point(168) = { 636918.4375, 5188135.0, 0.0, lc}; 
Point(169) = { 636918.4375, 5188085.0, 0.0, lc}; 
Point(170) = { 636893.4375, 5188085.0, 0.0, lc}; 
Point(171) = { 636893.4375, 5188010.0, 0.0, lc}; 
Point(172) = { 636868.4375, 5188010.0, 0.0, lc}; 
Point(173) = { 636868.4375, 5187985.0, 0.0, lc}; 
Point(174) = { 636843.4375, 5187985.0, 0.0, lc}; 
Point(175) = { 636843.4375, 5187960.0, 0.0, lc}; 
Point(176) = { 636768.4375, 5187960.0, 0.0, lc}; 
Point(177) = { 636768.4375, 5187935.0, 0.0, lc}; 
Point(178) = { 636618.4375, 5187935.0, 0.0, lc}; 
Point(179) = { 636618.4375, 5187960.0, 0.0, lc}; 
Point(180) = { 636568.4375, 5187960.0, 0.0, lc}; 
Point(181) = { 636568.4375, 5187935.0, 0.0, lc}; 
Point(182) = { 636518.4375, 5187935.0, 0.0, lc}; 
Point(183) = { 636518.4375, 5187960.0, 0.0, lc}; 
Point(184) = { 636468.4375, 5187960.0, 0.0, lc}; 
Point(185) = { 636468.4375, 5187985.0, 0.0, lc}; 
Point(186) = { 636443.4375, 5187985.0, 0.0, lc}; 
Point(187) = { 636443.4375, 5188010.0, 0.0, lc}; 
Point(188) = { 636318.4375, 5188010.0, 0.0, lc}; 
Point(189) = { 636318.4375, 5188060.0, 0.0, lc}; 
Point(190) = { 636293.4375, 5188060.0, 0.0, lc}; 
Point(191) = { 636293.4375, 5188035.0, 0.0, lc}; 
Point(192) = { 636243.4375, 5188035.0, 0.0, lc}; 
Point(193) = { 636243.4375, 5188060.0, 0.0, lc}; 
Point(194) = { 636168.4375, 5188060.0, 0.0, lc}; 
Point(195) = { 636168.4375, 5188085.0, 0.0, lc}; 
Point(196) = { 636118.4375, 5188085.0, 0.0, lc}; 
Point(197) = { 636118.4375, 5188110.0, 0.0, lc}; 
Point(198) = { 636093.4375, 5188110.0, 0.0, lc}; 
Point(199) = { 636093.4375, 5188135.0, 0.0, lc}; 
Point(200) = { 635993.4375, 5188135.0, 0.0, lc}; 
Point(201) = { 635993.4375, 5188210.0, 0.0, lc}; 
Point(202) = { 635968.4375, 5188210.0, 0.0, lc}; 
Point(203) = { 635968.4375, 5188385.0, 0.0, lc}; 
Point(204) = { 635993.4375, 5188385.0, 0.0, lc}; 
Point(205) = { 635993.4375, 5188435.0, 0.0, lc}; 
Point(206) = { 635968.4375, 5188435.0, 0.0, lc}; 
Point(207) = { 635968.4375, 5188510.0, 0.0, lc}; 
Point(208) = { 635993.4375, 5188510.0, 0.0, lc}; 
Point(209) = { 635993.4375, 5188535.0, 0.0, lc}; 
Point(210) = { 636118.4375, 5188535.0, 0.0, lc}; 
Point(211) = { 636118.4375, 5188560.0, 0.0, lc}; 
Point(212) = { 636143.4375, 5188560.0, 0.0, lc}; 
Point(213) = { 636143.4375, 5188660.0, 0.0, lc}; 
Point(214) = { 636118.4375, 5188660.0, 0.0, lc}; 
Point(215) = { 636118.4375, 5188685.0, 0.0, lc}; 
Point(216) = { 636093.4375, 5188685.0, 0.0, lc}; 
Point(217) = { 636093.4375, 5188710.0, 0.0, lc}; 
Point(218) = { 636068.4375, 5188710.0, 0.0, lc}; 
Point(219) = { 636068.4375, 5188735.0, 0.0, lc}; 
Point(220) = { 636018.4375, 5188735.0, 0.0, lc}; 
Point(221) = { 636018.4375, 5188710.0, 0.0, lc}; 
Point(222) = { 635993.4375, 5188710.0, 0.0, lc}; 
Point(223) = { 635993.4375, 5188735.0, 0.0, lc}; 
Point(224) = { 635868.4375, 5188735.0, 0.0, lc}; 
Point(225) = { 635868.4375, 5188760.0, 0.0, lc}; 
Point(226) = { 635768.4375, 5188760.0, 0.0, lc}; 
Point(227) = { 635768.4375, 5188785.0, 0.0, lc}; 
Point(228) = { 635718.4375, 5188785.0, 0.0, lc}; 
Point(229) = { 635718.4375, 5188835.0, 0.0, lc}; 
Point(230) = { 635693.4375, 5188835.0, 0.0, lc}; 
Point(231) = { 635693.4375, 5188885.0, 0.0, lc}; 
Point(232) = { 635668.4375, 5188885.0, 0.0, lc}; 
Point(233) = { 635668.4375, 5188935.0, 0.0, lc}; 
Point(234) = { 635643.4375, 5188935.0, 0.0, lc}; 
Point(235) = { 635643.4375, 5189210.0, 0.0, lc}; 
Point(236) = { 635618.4375, 5189210.0, 0.0, lc}; 
Point(237) = { 635618.4375, 5189260.0, 0.0, lc}; 
Point(238) = { 635593.4375, 5189260.0, 0.0, lc}; 
Point(239) = { 635593.4375, 5189310.0, 0.0, lc}; 
Point(240) = { 635568.4375, 5189310.0, 0.0, lc}; 
Point(241) = { 635568.4375, 5189485.0, 0.0, lc}; 
Point(242) = { 635543.4375, 5189485.0, 0.0, lc}; 
Point(243) = { 635543.4375, 5189560.0, 0.0, lc}; 
Point(244) = { 635493.4375, 5189560.0, 0.0, lc}; 
Point(245) = { 635493.4375, 5189585.0, 0.0, lc}; 
Point(246) = { 635468.4375, 5189585.0, 0.0, lc}; 
Point(247) = { 635468.4375, 5189610.0, 0.0, lc}; 
Point(248) = { 635443.4375, 5189610.0, 0.0, lc}; 
Point(249) = { 635443.4375, 5189635.0, 0.0, lc}; 
Point(250) = { 635418.4375, 5189635.0, 0.0, lc}; 
Point(251) = { 635418.4375, 5189660.0, 0.0, lc}; 
Point(252) = { 635393.4375, 5189660.0, 0.0, lc}; 
Point(253) = { 635393.4375, 5189735.0, 0.0, lc}; 
Point(254) = { 635368.4375, 5189735.0, 0.0, lc}; 
Point(255) = { 635368.4375, 5189785.0, 0.0, lc}; 
Point(256) = { 635418.4375, 5189785.0, 0.0, lc}; 
Point(257) = { 635418.4375, 5189960.0, 0.0, lc}; 
Point(258) = { 635468.4375, 5189960.0, 0.0, lc}; 
Point(259) = { 635468.4375, 5190035.0, 0.0, lc}; 
Point(260) = { 635493.4375, 5190035.0, 0.0, lc}; 
Point(261) = { 635493.4375, 5190060.0, 0.0, lc}; 
Point(262) = { 635518.4375, 5190060.0, 0.0, lc}; 
Point(263) = { 635518.4375, 5190085.0, 0.0, lc}; 
Point(264) = { 635543.4375, 5190085.0, 0.0, lc}; 
Point(265) = { 635543.4375, 5190110.0, 0.0, lc}; 
Point(266) = { 635568.4375, 5190110.0, 0.0, lc}; 
Point(267) = { 635568.4375, 5190160.0, 0.0, lc}; 
Point(268) = { 635618.4375, 5190160.0, 0.0, lc}; 
Point(269) = { 635618.4375, 5190185.0, 0.0, lc}; 
Point(270) = { 635643.4375, 5190185.0, 0.0, lc}; 
Point(271) = { 635643.4375, 5190210.0, 0.0, lc}; 
Point(272) = { 635668.4375, 5190210.0, 0.0, lc}; 
Point(273) = { 635668.4375, 5190260.0, 0.0, lc}; 
Point(274) = { 635643.4375, 5190260.0, 0.0, lc}; 
Point(275) = { 635643.4375, 5190310.0, 0.0, lc}; 
Point(276) = { 635668.4375, 5190310.0, 0.0, lc}; 
Point(277) = { 635668.4375, 5190360.0, 0.0, lc}; 
Point(278) = { 635693.4375, 5190360.0, 0.0, lc}; 
Point(279) = { 635693.4375, 5190385.0, 0.0, lc}; 
Point(280) = { 635718.4375, 5190385.0, 0.0, lc}; 
Point(281) = { 635718.4375, 5190410.0, 0.0, lc}; 
Point(282) = { 635768.4375, 5190410.0, 0.0, lc}; 
Point(283) = { 635768.4375, 5190460.0, 0.0, lc}; 
Point(284) = { 635793.4375, 5190460.0, 0.0, lc}; 
Point(285) = { 635793.4375, 5190485.0, 0.0, lc}; 
Point(286) = { 635818.4375, 5190485.0, 0.0, lc}; 
Point(287) = { 635818.4375, 5190510.0, 0.0, lc}; 
Point(288) = { 635843.4375, 5190510.0, 0.0, lc}; 
Point(289) = { 635843.4375, 5190535.0, 0.0, lc}; 
Point(290) = { 635868.4375, 5190535.0, 0.0, lc}; 
Point(291) = { 635868.4375, 5190560.0, 0.0, lc}; 
Point(292) = { 635918.4375, 5190560.0, 0.0, lc}; 
Point(293) = { 635918.4375, 5190635.0, 0.0, lc}; 
Point(294) = { 636018.4375, 5190635.0, 0.0, lc}; 
Point(295) = { 636018.4375, 5190610.0, 0.0, lc}; 
Point(296) = { 636118.4375, 5190610.0, 0.0, lc}; 
Point(297) = { 636118.4375, 5190635.0, 0.0, lc}; 
Point(298) = { 636143.4375, 5190635.0, 0.0, lc}; 
Point(299) = { 636143.4375, 5190660.0, 0.0, lc}; 
Point(300) = { 636168.4375, 5190660.0, 0.0, lc}; 
Point(301) = { 636168.4375, 5190685.0, 0.0, lc}; 
Point(302) = { 636218.4375, 5190685.0, 0.0, lc}; 
Point(303) = { 636218.4375, 5190710.0, 0.0, lc}; 
Point(304) = { 636268.4375, 5190710.0, 0.0, lc}; 
Point(305) = { 636268.4375, 5190760.0, 0.0, lc}; 
Point(306) = { 636368.4375, 5190760.0, 0.0, lc}; 
Point(307) = { 636368.4375, 5190810.0, 0.0, lc}; 
Point(308) = { 636393.4375, 5190810.0, 0.0, lc}; 
Point(309) = { 636393.4375, 5190835.0, 0.0, lc}; 
Point(310) = { 636418.4375, 5190835.0, 0.0, lc}; 
Point(311) = { 636418.4375, 5190860.0, 0.0, lc}; 
Point(312) = { 636443.4375, 5190860.0, 0.0, lc}; 
Point(313) = { 636443.4375, 5190910.0, 0.0, lc}; 
Point(314) = { 636468.4375, 5190910.0, 0.0, lc}; 
Point(315) = { 636468.4375, 5190935.0, 0.0, lc}; 
Point(316) = { 636518.4375, 5190935.0, 0.0, lc}; 
Line(1) = {1,2}; 
Line(2) = {2,3}; 
Line(3) = {3,4}; 
Line(4) = {4,5}; 
Line(5) = {5,6}; 
Line(6) = {6,7}; 
Line(7) = {7,8}; 
Line(8) = {8,9}; 
Line(9) = {9,10}; 
Line(10) = {10,11}; 
Line(11) = {11,12}; 
Line(12) = {12,13}; 
Line(13) = {13,14}; 
Line(14) = {14,15}; 
Line(15) = {15,16}; 
Line(16) = {16,17}; 
Line(17) = {17,18}; 
Line(18) = {18,19}; 
Line(19) = {19,20}; 
Line(20) = {20,21}; 
Line(21) = {21,22}; 
Line(22) = {22,23}; 
Line(23) = {23,24}; 
Line(24) = {24,25}; 
Line(25) = {25,26}; 
Line(26) = {26,27}; 
Line(27) = {27,28}; 
Line(28) = {28,29}; 
Line(29) = {29,30}; 
Line(30) = {30,31}; 
Line(31) = {31,32}; 
Line(32) = {32,33}; 
Line(33) = {33,34}; 
Line(34) = {34,35}; 
Line(35) = {35,36}; 
Line(36) = {36,37}; 
Line(37) = {37,38}; 
Line(38) = {38,39}; 
Line(39) = {39,40}; 
Line(40) = {40,41}; 
Line(41) = {41,42}; 
Line(42) = {42,43}; 
Line(43) = {43,44}; 
Line(44) = {44,45}; 
Line(45) = {45,46}; 
Line(46) = {46,47}; 
Line(47) = {47,48}; 
Line(48) = {48,49}; 
Line(49) = {49,50}; 
Line(50) = {50,51}; 
Line(51) = {51,52}; 
Line(52) = {52,53}; 
Line(53) = {53,54}; 
Line(54) = {54,55}; 
Line(55) = {55,56}; 
Line(56) = {56,57}; 
Line(57) = {57,58}; 
Line(58) = {58,59}; 
Line(59) = {59,60}; 
Line(60) = {60,61}; 
Line(61) = {61,62}; 
Line(62) = {62,63}; 
Line(63) = {63,64}; 
Line(64) = {64,65}; 
Line(65) = {65,66}; 
Line(66) = {66,67}; 
Line(67) = {67,68}; 
Line(68) = {68,69}; 
Line(69) = {69,70}; 
Line(70) = {70,71}; 
Line(71) = {71,72}; 
Line(72) = {72,73}; 
Line(73) = {73,74}; 
Line(74) = {74,75}; 
Line(75) = {75,76}; 
Line(76) = {76,77}; 
Line(77) = {77,78}; 
Line(78) = {78,79}; 
Line(79) = {79,80}; 
Line(80) = {80,81}; 
Line(81) = {81,82}; 
Line(82) = {82,83}; 
Line(83) = {83,84}; 
Line(84) = {84,85}; 
Line(85) = {85,86}; 
Line(86) = {86,87}; 
Line(87) = {87,88}; 
Line(88) = {88,89}; 
Line(89) = {89,90}; 
Line(90) = {90,91}; 
Line(91) = {91,92}; 
Line(92) = {92,93}; 
Line(93) = {93,94}; 
Line(94) = {94,95}; 
Line(95) = {95,96}; 
Line(96) = {96,97}; 
Line(97) = {97,98}; 
Line(98) = {98,99}; 
Line(99) = {99,100}; 
Line(100) = {100,101}; 
Line(101) = {101,102}; 
Line(102) = {102,103}; 
Line(103) = {103,104}; 
Line(104) = {104,105}; 
Line(105) = {105,106}; 
Line(106) = {106,107}; 
Line(107) = {107,108}; 
Line(108) = {108,109}; 
Line(109) = {109,110}; 
Line(110) = {110,111}; 
Line(111) = {111,112}; 
Line(112) = {112,113}; 
Line(113) = {113,114}; 
Line(114) = {114,115}; 
Line(115) = {115,116}; 
Line(116) = {116,117}; 
Line(117) = {117,118}; 
Line(118) = {118,119}; 
Line(119) = {119,120}; 
Line(120) = {120,121}; 
Line(121) = {121,122}; 
Line(122) = {122,123}; 
Line(123) = {123,124}; 
Line(124) = {124,125}; 
Line(125) = {125,126}; 
Line(126) = {126,127}; 
Line(127) = {127,128}; 
Line(128) = {128,129}; 
Line(129) = {129,130}; 
Line(130) = {130,131}; 
Line(131) = {131,132}; 
Line(132) = {132,133}; 
Line(133) = {133,134}; 
Line(134) = {134,135}; 
Line(135) = {135,136}; 
Line(136) = {136,137}; 
Line(137) = {137,138}; 
Line(138) = {138,139}; 
Line(139) = {139,140}; 
Line(140) = {140,141}; 
Line(141) = {141,142}; 
Line(142) = {142,143}; 
Line(143) = {143,144}; 
Line(144) = {144,145}; 
Line(145) = {145,146}; 
Line(146) = {146,147}; 
Line(147) = {147,148}; 
Line(148) = {148,149}; 
Line(149) = {149,150}; 
Line(150) = {150,151}; 
Line(151) = {151,152}; 
Line(152) = {152,153}; 
Line(153) = {153,154}; 
Line(154) = {154,155}; 
Line(155) = {155,156}; 
Line(156) = {156,157}; 
Line(157) = {157,158}; 
Line(158) = {158,159}; 
Line(159) = {159,160}; 
Line(160) = {160,161}; 
Line(161) = {161,162}; 
Line(162) = {162,163}; 
Line(163) = {163,164}; 
Line(164) = {164,165}; 
Line(165) = {165,166}; 
Line(166) = {166,167}; 
Line(167) = {167,168}; 
Line(168) = {168,169}; 
Line(169) = {169,170}; 
Line(170) = {170,171}; 
Line(171) = {171,172}; 
Line(172) = {172,173}; 
Line(173) = {173,174}; 
Line(174) = {174,175}; 
Line(175) = {175,176}; 
Line(176) = {176,177}; 
Line(177) = {177,178}; 
Line(178) = {178,179}; 
Line(179) = {179,180}; 
Line(180) = {180,181}; 
Line(181) = {181,182}; 
Line(182) = {182,183}; 
Line(183) = {183,184}; 
Line(184) = {184,185}; 
Line(185) = {185,186}; 
Line(186) = {186,187}; 
Line(187) = {187,188}; 
Line(188) = {188,189}; 
Line(189) = {189,190}; 
Line(190) = {190,191}; 
Line(191) = {191,192}; 
Line(192) = {192,193}; 
Line(193) = {193,194}; 
Line(194) = {194,195}; 
Line(195) = {195,196}; 
Line(196) = {196,197}; 
Line(197) = {197,198}; 
Line(198) = {198,199}; 
Line(199) = {199,200}; 
Line(200) = {200,201}; 
Line(201) = {201,202}; 
Line(202) = {202,203}; 
Line(203) = {203,204}; 
Line(204) = {204,205}; 
Line(205) = {205,206}; 
Line(206) = {206,207}; 
Line(207) = {207,208}; 
Line(208) = {208,209}; 
Line(209) = {209,210}; 
Line(210) = {210,211}; 
Line(211) = {211,212}; 
Line(212) = {212,213}; 
Line(213) = {213,214}; 
Line(214) = {214,215}; 
Line(215) = {215,216}; 
Line(216) = {216,217}; 
Line(217) = {217,218}; 
Line(218) = {218,219}; 
Line(219) = {219,220}; 
Line(220) = {220,221}; 
Line(221) = {221,222}; 
Line(222) = {222,223}; 
Line(223) = {223,224}; 
Line(224) = {224,225}; 
Line(225) = {225,226}; 
Line(226) = {226,227}; 
Line(227) = {227,228}; 
Line(228) = {228,229}; 
Line(229) = {229,230}; 
Line(230) = {230,231}; 
Line(231) = {231,232}; 
Line(232) = {232,233}; 
Line(233) = {233,234}; 
Line(234) = {234,235}; 
Line(235) = {235,236}; 
Line(236) = {236,237}; 
Line(237) = {237,238}; 
Line(238) = {238,239}; 
Line(239) = {239,240}; 
Line(240) = {240,241}; 
Line(241) = {241,242}; 
Line(242) = {242,243}; 
Line(243) = {243,244}; 
Line(244) = {244,245}; 
Line(245) = {245,246}; 
Line(246) = {246,247}; 
Line(247) = {247,248}; 
Line(248) = {248,249}; 
Line(249) = {249,250}; 
Line(250) = {250,251}; 
Line(251) = {251,252}; 
Line(252) = {252,253}; 
Line(253) = {253,254}; 
Line(254) = {254,255}; 
Line(255) = {255,256}; 
Line(256) = {256,257}; 
Line(257) = {257,258}; 
Line(258) = {258,259}; 
Line(259) = {259,260}; 
Line(260) = {260,261}; 
Line(261) = {261,262}; 
Line(262) = {262,263}; 
Line(263) = {263,264}; 
Line(264) = {264,265}; 
Line(265) = {265,266}; 
Line(266) = {266,267}; 
Line(267) = {267,268}; 
Line(268) = {268,269}; 
Line(269) = {269,270}; 
Line(270) = {270,271}; 
Line(271) = {271,272}; 
Line(272) = {272,273}; 
Line(273) = {273,274}; 
Line(274) = {274,275}; 
Line(275) = {275,276}; 
Line(276) = {276,277}; 
Line(277) = {277,278}; 
Line(278) = {278,279}; 
Line(279) = {279,280}; 
Line(280) = {280,281}; 
Line(281) = {281,282}; 
Line(282) = {282,283}; 
Line(283) = {283,284}; 
Line(284) = {284,285}; 
Line(285) = {285,286}; 
Line(286) = {286,287}; 
Line(287) = {287,288}; 
Line(288) = {288,289}; 
Line(289) = {289,290}; 
Line(290) = {290,291}; 
Line(291) = {291,292}; 
Line(292) = {292,293}; 
Line(293) = {293,294}; 
Line(294) = {294,295}; 
Line(295) = {295,296}; 
Line(296) = {296,297}; 
Line(297) = {297,298}; 
Line(298) = {298,299}; 
Line(299) = {299,300}; 
Line(300) = {300,301}; 
Line(301) = {301,302}; 
Line(302) = {302,303}; 
Line(303) = {303,304}; 
Line(304) = {304,305}; 
Line(305) = {305,306}; 
Line(306) = {306,307}; 
Line(307) = {307,308}; 
Line(308) = {308,309}; 
Line(309) = {309,310}; 
Line(310) = {310,311}; 
Line(311) = {311,312}; 
Line(312) = {312,313}; 
Line(313) = {313,314}; 
Line(314) = {314,315}; 
Line(315) = {315,316}; 
Line(316) = {316,1}; 
Curve Loop(1) = {1:316}; 
Plane Surface(1) = {1}; 
Physical Curve(1) = {1:316}; 
Physical Surface(1) = {1}; 