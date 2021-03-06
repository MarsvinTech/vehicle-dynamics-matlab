function dotX = semitrailerNonlinear(in1,in2,in3)
%SEMITRAILERNONLINEAR Nonlinear state-space equation of semi-trailer dynamics.
%    DOTX = SEMITRAILERNONLINEAR(X,U,PARAMS)
%   Inputs:
%       X       : State vector = [vx1 vy1 d_psi1 d_deltaPsi1 psi1 deltaPsi1]'
%                   vx1         : Car longitudinal velocity [m/s]
%                   vy1         : Car lateral velocity [m/s]
%                   d_psi1      : Inclination angle rate of Unit 1 w.r.t x-axis of Frame {E}. Unit: [rad/s]
%                   d_deltaPsi1 : Angle rate between Unit 1 and Unit 2. Unit: [rad/s]
%                   psi1        : Inclination angle rate of Unit 1 w.r.t x-axis of Frame {E}. Unit: [rad/s]
%                   deltaPsi1   : Angle rate between Unit 1 and Unit 2. Unit: [rad]
%                      
%       U       : Input vector = [delta11 Fxw12]'
%                   delta11     : Steering-angle. Unit: [rad]
%                   Fxw12       : Longitudinal Force applied on car unit 1 axle 2. Unit: [N]
%       params  : Parameters = [Cy11 Cy12 Cy13 Cy21 Cy22 Cy23 l11 l12 l13 l21 l22 l23 l1c1 l2c1 m1 m2 J1 J2]'
%                   Cyjk        : Cornering stiffness of unit j wheel k. Unit: [N]                  
%                   ljk         : Distance between unit j axle k to Center of gravity of unit j. Unit: [m]                      
%                   ljck        : Distance between Center of Gravity of unit j to joint of unit k. Unit: [m]
%                   mj          : Mass of vehicle unit j
%                   Jj          : Inertia around z-axis of vehicle unit j. Unit: [Kg.m^2]
%   Outputs:
%       dotX    : Symbolic expression of dotX = dX/dt = [d_vx1 d_vy1 dd_psi1 dd_deltaPsi1 d_psi1 d_deltaPsi1]'             
%   Author : Julius D.

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    11-Feb-2021 14:36:14

Cy11 = in3(1,:);
Cy12 = in3(2,:);
Cy13 = in3(3,:);
Cy21 = in3(4,:);
Cy22 = in3(5,:);
Cy23 = in3(6,:);
Fxw12 = in2(2,:);
J1 = in3(17,:);
J2 = in3(18,:);
d_deltaPsi1 = in1(4,:);
d_psi1 = in1(3,:);
delta11 = in2(1,:);
deltaPsi1 = in1(6,:);
l11 = in3(7,:);
l12 = in3(8,:);
l13 = in3(9,:);
l21 = in3(10,:);
l22 = in3(11,:);
l23 = in3(12,:);
l1c1 = in3(13,:);
l2c1 = in3(14,:);
m1 = in3(15,:);
m2 = in3(16,:);
psi1 = in1(5,:);
vx1 = in1(1,:);
vy1 = in1(2,:);
t2 = cos(delta11);
t3 = cos(deltaPsi1);
t4 = cos(psi1);
t5 = sin(delta11);
t6 = sin(deltaPsi1);
t7 = sin(psi1);
t8 = J2.*m1;
t9 = J2.*m2;
t10 = Cy12.*vy1;
t11 = d_deltaPsi1.*l21;
t12 = d_deltaPsi1.*l22;
t13 = d_deltaPsi1.*l23;
t14 = d_psi1.*l12;
t15 = d_psi1.*l13;
t16 = d_psi1.*l21;
t17 = d_psi1.*l22;
t18 = d_psi1.*l23;
t19 = d_deltaPsi1.*l2c1;
t20 = d_psi1.*l2c1;
t21 = delta11+psi1;
t22 = deltaPsi1+psi1;
t23 = m1+m2;
t24 = l1c1.*vx1;
t25 = d_psi1.^2;
t26 = d_psi1.^3;
t27 = delta11.*2.0;
t28 = deltaPsi1.*2.0;
t29 = l21.^2;
t30 = l22.^2;
t31 = l23.^2;
t32 = l1c1.^2;
t33 = l2c1.^2;
t34 = m1.^2;
t35 = m2.^2;
t36 = psi1.*2.0;
t66 = -d_psi1;
t67 = -psi1;
t69 = 1.0./vx1;
t95 = vy1./2.0;
t37 = cos(t28);
t38 = t3.^2;
t39 = cos(t36);
t40 = sin(t28);
t41 = t6.^2;
t42 = sin(t36);
t43 = t7.^2;
t44 = J1.*t8;
t45 = J1.*t9;
t46 = Cy12.*t14;
t47 = Fxw12.*t4;
t48 = Fxw12.*t7;
t49 = cos(t22);
t50 = t2.*vx1;
t51 = t3.*vx1;
t52 = t2.*vy1;
t53 = t3.*vy1;
t54 = l1c1.*t4;
t55 = sin(t21);
t56 = sin(t22);
t57 = t4.*vx1;
t58 = t4.*vy1;
t59 = t5.*vx1;
t60 = t6.*vx1;
t61 = t5.*vy1;
t62 = t6.*vy1;
t63 = l1c1.*t7;
t64 = t7.*vx1;
t65 = t7.*vy1;
t68 = -t36;
t71 = d_psi1.*l11.*t4;
t73 = d_psi1.*l11.*t5;
t74 = d_deltaPsi1.*l1c1.*t6;
t75 = d_psi1.*l1c1.*t6;
t79 = d_psi1.*l11.*t7;
t84 = -t11;
t85 = -t14;
t86 = -t15;
t87 = -t17;
t88 = -t18;
t89 = -t20;
t90 = delta11+t21;
t96 = t4.*t10;
t97 = d_psi1.*l11.*t2;
t98 = d_psi1.*l1c1.*t3;
t100 = m1.*m2.*t33;
t104 = t15./2.0;
t119 = d_deltaPsi1+t66;
t121 = deltaPsi1+t67;
t131 = Cy21.*l21.*t11;
t132 = Cy22.*l22.*t12;
t133 = Cy23.*l23.*t13;
t134 = Cy21.*l21.*t16;
t135 = Cy22.*l22.*t17;
t136 = Cy23.*l23.*t18;
t137 = Cy21.*l2c1.*t19;
t138 = Cy22.*l2c1.*t19;
t139 = Cy23.*l2c1.*t19;
t140 = Cy21.*l2c1.*t20;
t141 = Cy22.*l2c1.*t20;
t142 = Cy23.*l2c1.*t20;
t143 = Cy21.*l2c1.*t11.*2.0;
t144 = Cy22.*l2c1.*t12.*2.0;
t145 = Cy23.*l2c1.*t13.*2.0;
t146 = Cy21.*l2c1.*t16.*2.0;
t147 = Cy22.*l2c1.*t17.*2.0;
t148 = Cy23.*l2c1.*t18.*2.0;
t149 = t4.*t8.*2.0;
t150 = t4.*t9.*2.0;
t152 = t7.*t8.*2.0;
t153 = t7.*t9.*2.0;
t164 = m2.*t8.*t32;
t173 = Cy21.*l1c1.*t3.*t16;
t174 = Cy22.*l1c1.*t3.*t17;
t175 = Cy23.*l1c1.*t3.*t18;
t176 = Cy21.*l1c1.*t3.*t20;
t177 = Cy22.*l1c1.*t3.*t20;
t178 = Cy23.*l1c1.*t3.*t20;
t181 = l1c1.*l2c1.*m1.*m2.*t3;
t187 = l1c1.*t3.*t66;
t203 = d_psi1.*l1c1.*m2.*t20.*vy1;
t205 = t28+t67;
t221 = t8.*t32.*t35;
t223 = J1.*m1.*t33.*t35;
t224 = J1.*m2.*t33.*t34;
t230 = m2.*t20.*t25.*t32;
t240 = l1c1.*m2.*t20.*t66.*vy1;
t263 = (m2.*t9.*t32)./2.0;
t264 = (J1.*t33.*t35)./2.0;
t295 = (m1.*t32.*t33.*t35)./2.0;
t302 = -Cy12.*t4.*t69.*(t14-vy1);
t303 = -Cy13.*t4.*t69.*(t15-vy1);
t305 = -Cy12.*t7.*t69.*(t14-vy1);
t306 = -Cy13.*t7.*t69.*(t15-vy1);
t70 = t48.*vx1;
t72 = d_psi1.*t54;
t76 = l2c1.*t51;
t77 = d_psi1.*t57;
t78 = d_psi1.*t58;
t80 = d_psi1.*t63;
t81 = l2c1.*t62;
t82 = d_psi1.*t64;
t83 = d_psi1.*t65;
t91 = t50.*2.0;
t92 = t51.*2.0;
t93 = t61.*2.0;
t94 = t62.*2.0;
t101 = sin(t90);
t102 = t73.*2.0;
t103 = t75.*2.0;
t105 = t4.*t46;
t106 = Cy21.*l21.*t53;
t107 = Cy22.*l22.*t53;
t108 = Cy23.*l23.*t53;
t109 = Cy21.*l2c1.*t53;
t110 = Cy22.*l2c1.*t53;
t111 = Cy23.*l2c1.*t53;
t112 = Cy21.*l21.*t60;
t113 = Cy22.*l22.*t60;
t114 = Cy23.*l23.*t60;
t115 = Cy21.*l2c1.*t60;
t116 = Cy22.*l2c1.*t60;
t117 = Cy23.*l2c1.*t60;
t118 = -t46;
t120 = -t48;
t122 = -t57;
t123 = -t59;
t124 = -t62;
t126 = -t63;
t127 = -t65;
t128 = m1.*t44;
t129 = m2.*t45;
t130 = m2.*t44.*2.0;
t151 = cos(t90);
t154 = t54.*t66;
t155 = t85+vy1;
t156 = t86+vy1;
t157 = sin(t121);
t158 = -t74;
t159 = t63.*t66;
t161 = t65.*t66;
t162 = -t104;
t163 = t10.*t39;
t165 = J1.*t100;
t166 = t8.*t54.*2.0;
t167 = t9.*t54.*2.0;
t168 = Fxw12.*t42.*vx1;
t169 = t8.*t63.*2.0;
t170 = t9.*t63.*2.0;
t171 = t39-1.0;
t172 = t43-1.0;
t179 = t58./2.0;
t180 = t64./2.0;
t182 = -t143;
t183 = -t147;
t184 = -t148;
t185 = -t96;
t186 = cos(t121);
t188 = t71./2.0;
t191 = t39.*t46;
t194 = -t134;
t195 = Cy22.*l22.*t87;
t196 = Cy23.*l23.*t88;
t197 = Cy21.*l2c1.*t89;
t198 = Cy22.*l2c1.*t89;
t199 = Cy23.*l2c1.*t89;
t200 = t4.*t100;
t204 = t7.*t100;
t206 = t28+t68;
t209 = t54.*t100;
t211 = t63.*t100;
t212 = cos(t205);
t214 = sin(t205);
t216 = Cy22.*l1c1.*t3.*t87;
t217 = Cy23.*l1c1.*t3.*t88;
t218 = Cy21.*l1c1.*t3.*t89;
t219 = Cy22.*l1c1.*t3.*t89;
t220 = Cy23.*l1c1.*t3.*t89;
t222 = m1.*t164;
t225 = J2.*t32.*t42;
t241 = l2c1.*m1.*m2.*t32.*t49;
t242 = l2c1.*m1.*m2.*t32.*t56;
t269 = t38.*t203;
t294 = t38.*t230;
t299 = t50+t61+t73;
t301 = (d_psi1.*m2.*t20.*t24.*t40)./2.0;
t308 = t39.*t263;
t309 = m2.*t25.*t32.*t38.*t89;
t311 = m2.*t9.*t32.*t39.*(-1.0./2.0);
t323 = t32.*t33.*t34.*t35.*t41;
t324 = t37.*t295;
t330 = m1.*t32.*t33.*t35.*t37.*(-1.0./2.0);
t334 = t8+t9+t100+t181;
t358 = t16+t19+t53+t60+t84+t89+t187;
t359 = t12+t19+t53+t60+t87+t89+t187;
t360 = t13+t19+t53+t60+t88+t89+t187;
t99 = t72.*2.0;
t125 = -t94;
t160 = -t81;
t189 = -t106;
t190 = -t112;
t192 = t151.*vx1;
t193 = t151.*vy1;
t201 = t101.*vx1;
t202 = t101.*vy1;
t207 = d_psi1.*l11.*t151;
t208 = d_psi1.*l11.*t101;
t210 = -t163;
t213 = cos(t206);
t215 = sin(t206);
t226 = l21.*t186;
t227 = l22.*t186;
t228 = l23.*t186;
t229 = l2c1.*t186;
t231 = l21.*t157;
t232 = l22.*t157;
t233 = l23.*t157;
t234 = l2c1.*t157;
t235 = t19.*t186;
t236 = t20.*t186;
t237 = t19.*t157;
t238 = t20.*t157;
t243 = t11.*t186.*2.0;
t244 = t12.*t186.*2.0;
t245 = t13.*t186.*2.0;
t246 = t16.*t186.*2.0;
t247 = t17.*t186.*2.0;
t248 = t18.*t186.*2.0;
t251 = t212.*vx1;
t252 = t212.*vy1;
t253 = t11.*t157.*2.0;
t254 = t12.*t157.*2.0;
t255 = t13.*t157.*2.0;
t256 = t16.*t157.*2.0;
t257 = t17.*t157.*2.0;
t258 = t18.*t157.*2.0;
t261 = t214.*vx1;
t262 = t214.*vy1;
t266 = t95.*t151;
t276 = t89.*t186;
t282 = t89.*t157;
t285 = d_psi1.*l1c1.*t212;
t288 = d_psi1.*l1c1.*t214;
t291 = t95+t162;
t298 = l1c1.*t66.*t212;
t304 = t100.*t212;
t307 = t100.*t214;
t312 = t52+t97+t123;
t313 = t51+t75+t124;
t318 = 1.0./t299;
t322 = t91+t93+t102;
t331 = t70+t105+t185;
t337 = -Cy13.*l13.*t69.*t172.*(t15-vy1);
t342 = Cy13.*l13.*t69.*t172.*(t15-vy1);
t343 = t51+t103+t124+t158;
t378 = t128+t129+t130+t221+t222+t223+t224+t323;
t239 = -t201;
t249 = t235.*2.0;
t250 = t236.*2.0;
t259 = t237.*2.0;
t260 = t238.*2.0;
t265 = -t226;
t267 = -t234;
t268 = t201./2.0;
t270 = -t243;
t271 = t207./2.0;
t272 = -t247;
t273 = -t248;
t274 = -t235;
t278 = -t254;
t279 = -t255;
t280 = -t256;
t283 = J1.*m1.*t229.*2.0;
t284 = J1.*m2.*t229.*2.0;
t286 = J1.*m1.*t234.*2.0;
t287 = J1.*m2.*t234.*2.0;
t290 = -t262;
t296 = m1.*m2.*t32.*t229;
t297 = m1.*m2.*t32.*t234;
t300 = J1.*t33.*t215;
t314 = t24+t76+t160;
t315 = l1c1.*t304;
t316 = l1c1.*t307;
t319 = m2.*t119.*t235;
t320 = m2.*t119.*t237;
t321 = -t304;
t325 = t92+t103+t125;
t327 = 1.0./t313;
t333 = 1.0./t322;
t335 = t213.*t264;
t338 = J1.*t33.*t35.*t213.*(-1.0./2.0);
t340 = t54+t227+t229;
t341 = t54+t228+t229;
t346 = t126+t232+t234;
t347 = t126+t233+t234;
t349 = l12.*t4.*t69.*t331;
t350 = Cy13.*l13.*t69.*t171.*t291;
t351 = m2.*t19.*t343;
t353 = t80+t237+t282;
t361 = t10+t118+t168+t191+t210;
t362 = t152+t153+t204+t307;
t365 = t58+t64+t154+t235+t276;
t369 = t65+t79+t122+t192+t202+t208;
t370 = Cy11.*l11.*t7.*t55.*t312.*t318;
t379 = 1.0./t378;
t405 = t107+t108+t109+t110+t111+t113+t114+t115+t116+t117+t131+t132+t133+t137+t138+t139+t144+t145+t146+t173+t182+t183+t184+t189+t190+t194+t195+t196+t197+t198+t199+t216+t217+t218+t219+t220+t230+t240+t269+t301+t309;
t275 = -t249;
t277 = -t250;
t281 = -t259;
t289 = -t268;
t292 = -t283;
t293 = -t284;
t310 = -t296;
t317 = -t300;
t326 = -t315;
t328 = m2.*t119.*t274;
t329 = -t320;
t332 = d_psi1.*m2.*t314;
t336 = 1.0./t325;
t339 = m2.*t66.*t314;
t344 = t54+t229+t265;
t345 = t63+t231+t267;
t352 = t72+t236+t274;
t354 = -t349;
t355 = -t350;
t357 = d_psi1.*m2.*t353;
t366 = t57+t127+t353;
t367 = t149+t150+t200+t321;
t368 = t58+t64+t71+t193+t207+t239;
t371 = (l12.*t69.*t361)./2.0;
t372 = -t370;
t375 = Cy11.*t333.*t369;
t377 = m2.*t353.*t365;
t382 = Cy22.*t186.*t327.*t340.*t359;
t383 = Cy23.*t186.*t327.*t341.*t360;
t386 = Cy22.*t157.*t327.*t346.*t359;
t387 = Cy23.*t157.*t327.*t347.*t360;
t389 = t169+t170+t211+t242+t286+t287+t297+t316;
t397 = t44+t45+t164+t165+t263+t264+t295+t308+t330+t335;
t398 = t44+t45+t164+t165+t263+t264+t295+t311+t330+t338;
t348 = t225+t317;
t356 = t99+t250+t275;
t373 = t179+t180+t188+t266+t271+t289;
t374 = Cy11.*t333.*t368;
t376 = m2.*t352.*t366;
t384 = Cy21.*t186.*t327.*t344.*t358;
t385 = Cy21.*t157.*t327.*t345.*t358;
t390 = t166+t167+t209+t241+t292+t293+t310+t326;
t391 = t58+t64+t154+t246+t249+t252+t261+t270+t277+t298;
t392 = t58+t64+t154+t244+t249+t252+t261+t272+t277+t298;
t393 = t58+t64+t154+t245+t249+t252+t261+t273+t277+t298;
t394 = t65+t122+t159+t251+t253+t260+t280+t281+t288+t290;
t395 = t65+t122+t159+t251+t257+t260+t278+t281+t288+t290;
t396 = t65+t122+t159+t251+t258+t260+t279+t281+t288+t290;
t402 = -Cy21.*t336.*(t57+t80+t127-t251-t253+t256+t259-t260+t262+l1c1.*t66.*t214);
t403 = -Cy22.*t336.*(t57+t80+t127-t251+t254-t257+t259-t260+t262+l1c1.*t66.*t214);
t404 = -Cy23.*t336.*(t57+t80+t127-t251+t255-t258+t259-t260+t262+l1c1.*t66.*t214);
t406 = (m2.*t327.*t379.*t389.*t405)./2.0;
t363 = (d_psi1.*m2.*t356)./2.0;
t380 = Cy11.*l11.*t4.*t318.*t373;
t388 = -t385;
t399 = Cy21.*t336.*t391;
t400 = Cy22.*t336.*t392;
t401 = Cy23.*t336.*t393;
t407 = (m2.*t327.*t379.*t390.*t405)./2.0;
t364 = -t363;
t381 = -t380;
t408 = t120+t302+t303+t329+t357+t374+t399+t400+t401;
t411 = t35.*t348.*t379.*(-t47+t319+t363-t375+Cy21.*t336.*(t57+t80+t127-t251-t253+t256+t259-t260+t262+l1c1.*t66.*t214)+Cy22.*t336.*(t57+t80+t127-t251+t254-t257+t259-t260+t262+l1c1.*t66.*t214)+Cy23.*t336.*(t57+t80+t127-t251+t255-t258+t259-t260+t262+l1c1.*t66.*t214)+Cy12.*t7.*t69.*(t14-vy1)+Cy13.*t7.*t69.*(t15-vy1)).*(-1.0./2.0);
t413 = -t379.*t398.*(-t47+t319+t363-t375+Cy21.*t336.*(t57+t80+t127-t251-t253+t256+t259-t260+t262+l1c1.*t66.*t214)+Cy22.*t336.*(t57+t80+t127-t251+t254-t257+t259-t260+t262+l1c1.*t66.*t214)+Cy23.*t336.*(t57+t80+t127-t251+t255-t258+t259-t260+t262+l1c1.*t66.*t214)+Cy12.*t7.*t69.*(t14-vy1)+Cy13.*t7.*t69.*(t15-vy1));
t409 = t47+t305+t306+t328+t364+t375+t402+t403+t404;
t410 = (t35.*t348.*t379.*t408)./2.0;
t412 = t379.*t397.*t408;
t414 = t339+t342+t351+t354+t355+t371+t372+t376+t377+t381+t382+t383+t384+t386+t387+t388;
t415 = (l1c1.*m2.*t362.*t379.*t414)./2.0;
t417 = (l1c1.*m2.*t367.*t379.*t414)./2.0;
t416 = -t415;
t418 = -t417;
t419 = t78+t82+t406+t410+t413+t416;
t420 = t77+t161+t407+t411+t412+t418;
dotX = [t4.*t419-t7.*t420;-t4.*t420-t7.*t419;t23.*t379.*t414.*(t8+t9+t100)+(l1c1.*m2.*t362.*t379.*(-t47+t319+t363-t375+Cy21.*t336.*(t57+t80+t127-t251-t253+t256+t259-t260+t262+l1c1.*t66.*t214)+Cy22.*t336.*(t57+t80+t127-t251+t254-t257+t259-t260+t262+l1c1.*t66.*t214)+Cy23.*t336.*(t57+t80+t127-t251+t255-t258+t259-t260+t262+l1c1.*t66.*t214)+Cy12.*t7.*t69.*(t14-vy1)+Cy13.*t7.*t69.*(t15-vy1)))./2.0-(l1c1.*m2.*t367.*t379.*t408)./2.0-t23.*t327.*t334.*t379.*t405;(m2.*t379.*t389.*(-t47+t319+t363-t375+Cy21.*t336.*(t57+t80+t127-t251-t253+t256+t259-t260+t262+l1c1.*t66.*t214)+Cy22.*t336.*(t57+t80+t127-t251+t254-t257+t259-t260+t262+l1c1.*t66.*t214)+Cy23.*t336.*(t57+t80+t127-t251+t255-t258+t259-t260+t262+l1c1.*t66.*t214)+Cy12.*t7.*t69.*(t14-vy1)+Cy13.*t7.*t69.*(t15-vy1)))./2.0-(m2.*t379.*t390.*t408)./2.0+t23.*t334.*t379.*t414-t23.*t327.*t379.*t405.*(t181+t334+J1.*m1+J1.*m2+m1.*m2.*t32);d_psi1;d_deltaPsi1];
