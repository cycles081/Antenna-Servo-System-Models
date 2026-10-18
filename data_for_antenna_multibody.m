% Simscape(TM) Multibody(TM) version: 6.0

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData



%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [2.2204460492503131e-13 0 21.999999999999908];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = 'B[jijia-1:-:diban-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-43.000000000084896 -33.000000000002331 404.99999999990331];  % mm
smiData.RigidTransform(2).angle = 2.0943951023931935;  % rad
smiData.RigidTransform(2).axis = [0.57735026918962506 -0.57735026918962506 0.57735026918962717];
smiData.RigidTransform(2).ID = 'F[jijia-1:-:diban-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-175.00000000000048 219.99999999999699 765.00000000000171];  % mm
smiData.RigidTransform(3).angle = 0;  % rad
smiData.RigidTransform(3).axis = [0 0 0];
smiData.RigidTransform(3).ID = 'B[diban-1:-:hengliang1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [-9.9999999999965894 -359.99999999999795 -175.199999999998];  % mm
smiData.RigidTransform(4).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(4).axis = [0.57735026918962562 -0.57735026918962595 0.57735026918962562];
smiData.RigidTransform(4).ID = 'F[diban-1:-:hengliang1-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [46.567740033823213 2.5794350084576436 251.50001250000014];  % mm
smiData.RigidTransform(5).angle = 0;  % rad
smiData.RigidTransform(5).axis = [0 0 0];
smiData.RigidTransform(5).ID = 'RootGround[jijia-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(3).mass = 0.0;
smiData.Solid(3).CoM = [0.0 0.0 0.0];
smiData.Solid(3).MoI = [0.0 0.0 0.0];
smiData.Solid(3).PoI = [0.0 0.0 0.0];
smiData.Solid(3).color = [0.0 0.0 0.0];
smiData.Solid(3).opacity = 0.0;
smiData.Solid(3).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 4.8387574773610504;  % kg
smiData.Solid(1).CoM = [-35.969374195383608 36.556766274335594 416.63271880612729];  % mm
smiData.Solid(1).MoI = [472786.58664811304 506126.5877840413 110860.03937223052];  % kg*mm^2
smiData.Solid(1).PoI = [-1395.1087434798847 1915.8359456199569 28482.1810809013];  % kg*mm^2
smiData.Solid(1).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'diban*:*默认';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.26040765477362143;  % kg
smiData.Solid(2).CoM = [-11.136595828600527 -7.0904454487939524e-06 4.7059744387910527];  % mm
smiData.Solid(2).MoI = [475.48256307267764 823.05181215600271 1278.4884680287639];  % kg*mm^2
smiData.Solid(2).PoI = [-2.3472550021005555e-06 -10.753605395792112 9.405735946537779e-05];  % kg*mm^2
smiData.Solid(2).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'jijia*:*默认';

%Inertia Type - Custom %Visual Properties - Simple 
smiData.Solid(3).mass = 26.853345169701036;  % kg 
smiData.Solid(3).CoM = [6.0951702704563822 1.8923609914424082 -126.31786394279143];  % mm 
smiData.Solid(3).MoI = [2685902.5265253265 800749.87949273258 3311821.0275346357];  % kg*mm^2 
smiData.Solid(3).PoI = [-351.3690188770853 -2443.6643652746179 -677.4204777859353];  % kg*mm^2 
smiData.Solid(3).color = [0.89803921568627454 0.91764705882352937 0.92941176470588238]; 
smiData.Solid(3).opacity = 1; 
smiData.Solid(3).ID = 'hengliang1*:*默认';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = 90;  % deg
smiData.RevoluteJoint(1).ID = '[jijia-1:-:diban-1]';

smiData.RevoluteJoint(2).Rz.Pos = 120;  % deg
smiData.RevoluteJoint(2).ID = '[diban-1:-:hengliang1-1]';

