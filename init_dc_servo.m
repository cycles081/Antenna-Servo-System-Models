% Motor and controller parameters used by dcmotor_20240522.slx.
% Extracted from the parameter section of dc/dc_para.m. The original
% script also loads a private Excel recording, which this model does not
% need as an input.

R = 0.299;          % armature resistance
L = 0.0823e-3;      % armature inductance
Cm = 30.2e-3;       % torque constant
Ce = 1/317;         % back-EMF constant
J = 142e-7;         % motor inertia

Kip = 2700;         % current-loop proportional gain
Kii = 600;          % current-loop integral gain
Kvp = 1200;         % velocity-loop proportional gain
Kvi = 60;           % velocity-loop integral gain
Kpp = 30;           % position-loop proportional gain
