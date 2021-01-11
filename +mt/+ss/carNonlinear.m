function dotX = carNonlinear(X,U,params)
%CARNONLINEAR Nonlinear state-space equation of car dynamics
%    DOTX = CARNONLINEAR(X,U,params)
%   Inputs:
%       X       : State vector = [vx vy d_psi]'
%                   vx : Car longitudinal velocity [m/s]
%                   vy : Car lateral velocity [m/s]
%                   d_psi : Yaw-rate [rad/s]
%       U       : Input vector = [delta Fxw2]'
%                   delta : Steering-angle [rad]
%                   Fxw2 : Longitudinal Force applied on car [N]
%       params  : Parameters = [Cy1 Cy2 l1 l2 m J]'
%                   Cy1 : Cornering stiffness of front wheel.
%                   Cy2 : Cornering stiffness of rear wheel.
%                   l1 : Distance between front axle and centre of gravity. Unit: [m]
%                   l2 : Distance between rear axle and centre of gravity. Unit: [m]
%                   m : Vehicle mass. Unit: [Kg]
%                   J : Inertia around z-axis of vehicle Unit. Unit: [Kg.m^2]
%   Outputs:
%       dotX    : Symbolic expression of dotX = dX/dt = [d_vx d_vy dd_psi]               
%   Author : Julius D.

%    This function was generated by the Symbolic Math Toolbox version 8.5.
%    02-Aug-2020 17:51:11

Cy1 = params(:,1);
Cy2 = params(:,2);
Fxw2 = U(:,2);
J = params(:,6);
d_psi = X(:,3);
delta = U(:,1);
l1 = params(:,3);
l2 = params(:,4);
m = params(:,5);
vx = X(:,1);
vy = X(:,2);
t2 = cos(delta);
t3 = sin(delta);
t4 = d_psi.^2;
t5 = delta.*2.0;
t6 = l2.^2;
t7 = vx.^2;
t8 = vy.^2;
t13 = 1.0./m;
t14 = 1.0./vx;
t9 = t2.^2;
t10 = sin(t5);
t11 = t2.*vx;
t12 = t3.*vy;
t15 = d_psi.*l1.*t3;
t16 = t11+t12+t15;
t17 = 1.0./t16;
dotX = [(t13.*t17.*(-Cy1.*vx+Fxw2.*t11.*2.0+Fxw2.*t12.*2.0+Fxw2.*t15.*2.0+Cy1.*t10.*vy+Cy1.*vx.*cos(t5)+d_psi.*m.*t3.*t8.*2.0+d_psi.*m.*t11.*vy.*2.0+l1.*m.*t4.*t12.*2.0+Cy1.*d_psi.*l1.*t10))./2.0;-t13.*t14.*t17.*(Cy2.*t3.*t8-(Cy1.*t7.*t10)./2.0+Cy2.*t11.*vy+Cy1.*t9.*vx.*vy+d_psi.*m.*t7.*t12+d_psi.*m.*t11.*1.0./t14.^2+Cy2.*d_psi.*l1.*t12-Cy2.*d_psi.*l2.*t11-Cy2.*d_psi.*l2.*t12+Cy1.*d_psi.*l1.*t9.*vx-Cy2.*l1.*l2.*t3.*t4+l1.*m.*t3.*t4.*t7);-(t14.*t17.*(Cy2.*d_psi.*t6.*t11+Cy2.*d_psi.*t6.*t12-Cy2.*l2.*t3.*t8-(Cy1.*l1.*t7.*t10)./2.0-Cy2.*l2.*t11.*vy-Cy2.*d_psi.*l1.*l2.*t12+Cy2.*l1.*t3.*t4.*t6+Cy1.*l1.*t9.*vx.*vy+Cy1.*d_psi.*l1.^2.*t9.*vx))./J];
