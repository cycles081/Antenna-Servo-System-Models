# Two-Axis Antenna Servo System Models

Three MATLAB/Simulink models of a two-axis antenna servo system are selected from a larger archive of dated experiments. They show three distinct modeling approaches: an analytical PMSM servo with a multibody antenna, a Simscape Electrical PMSM drive coupled to the multibody antenna, and a DC motor servo with a forward-dynamics model.
·
The repository contains model files, required parameter scripts, and the three CAD geometry files referenced by the multibody models. Experimental recordings, simulation output, generated caches, and older model revisions are excluded.

## Models

| Model | Purpose | Setup before opening |
| --- | --- | --- |
| `servo_20230915.slx` | Analytical PMSM equations and servo control coupled to the two-axis Simscape Multibody antenna | `data_for_antenna_multibody; para_for_math_pmsm` |
| `simscape_antenna_240102.slx` | Detailed PMSM electrical drive, gearing, and multibody antenna | `data_for_antenna_multibody` |
| `dcmotor_20240522.slx` | DC motor current, velocity, and position control with antenna forward dynamics | `init_dc_servo` |

These are separate model variants. Run them from a fresh MATLAB workspace to avoid carrying parameters such as `R` and `J` between variants.

## Requirements

- The models were saved with MATLAB **R2022a**. Open them with R2022a or a compatible newer release.
- MATLAB and Simulink are required for all three models.
- The two multibody variants require Simscape Multibody. The detailed PMSM variant also uses Simscape Electrical components.
- The DC model contains MATLAB Function blocks; their availability depends on the installed Simulink/Stateflow components.

Toolbox requirements are inferred from the saved block libraries. They have not been checked by running the models on this computer.

## Open a model

In MATLAB, change to this repository directory. For example, to open the detailed PMSM model:

```matlab
cd('path/to/antenna-servo-simulink-github')
data_for_antenna_multibody
open_system('simscape_antenna_240102.slx')
```

For the analytical PMSM model:

```matlab
clear
data_for_antenna_multibody
para_for_math_pmsm
open_system('servo_20230915.slx')
```

For the DC servo model:

```matlab
clear
init_dc_servo
open_system('dcmotor_20240522.slx')
```

Keep the three `.STEP` files in this directory or on the MATLAB path. Both multibody models refer to them by filename. `data_for_antenna_multibody.m` defines the `smiData` structure used by their bodies, transforms, and joints. The detailed PMSM model also defines electrical and control parameters in its Simulink `PreLoadFcn` callback.

## Reproducibility notes

- The DC model contains an embedded Fourier reference trajectory and hard-coded forward-dynamics parameters. `init_dc_servo.m` supplies only the motor and controller parameters referenced from the MATLAB workspace.
- The DC model has a `To File` block that writes `motor_kp0.01.mat` when simulated. This output is excluded by `.gitignore`.
- The detailed PMSM model has a `StopFcn` callback that calls `ee_addSimlogTimeStamp`. If this helper is absent from a MATLAB installation, remove or replace that callback before simulation.
- The original archive also contains a manually edited `para1234.m` with different body mass and inertia values. This repository uses the generated `data_for_antenna_multibody.m` values as its documented baseline; numerical outputs may differ from experiments that used the edited script.
- The models were inspected structurally, including their Simulink XML, file references, and parameter names. MATLAB/Simulink was not available here, so simulation results and numerical accuracy have not been verified.

## File roles

| Files | Role |
| --- | --- |
| `*.slx` | The three curated Simulink models |
| `data_for_antenna_multibody.m` | Imported multibody geometry and inertial parameters (`smiData`) |
| `para_for_math_pmsm.m` | Parameters for the analytical PMSM model |
| `init_dc_servo.m` | Parameters for the DC motor servo model, without private data loading |
| `*.STEP` | External geometry used by the two multibody models |

The saved models and parameters reflect a research prototype for one antenna. Review controller gains and physical parameters before applying the models to another mechanism.
