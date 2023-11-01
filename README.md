# Demo Programs for Courses at the University of South-Eastern Norway

Collection of small applications written to illustrate phenomena taught in courses, either for classroom demonstration or for use by students on their own.

The programs were written for classroom demonstration over several, using different tools, to the courses presently called  'TSE2280 Measurement Technology and Signal Processing' and 'SPE590 Specialisation Topic (Acoustics and Ultrasound Technology)'

## TSE2280 Measurement Technology and Signal Processing

### Dynamic Systems

| Description  | Type | Function Name | 
| -- | -- | -- | 
| Step response of a first-order dynamic system | Matlab-app | `first_order_step_resp.mlapp` |
| Step response of a second-order dynamic system  | Matlab-app |`second_order_step_resp.mlapp` |

### Signals
| Description  | Type | Function Name | 
| -- | -- | -- | 
| Illustration of sine- and cosine-functions as complex phasors | Matlab-app| `phasor_demo.mlapp` |
| Convolution | Matlab-app |  `convolution_demo.mlapp` |
| Illustration of signals constructed from sine-waves: Fourier coefficients   | Matlab-app | `fouriersynthesis.mlapp` |
| Aliasing: Several frequencies fitting the same sample points                | Matlab-app | `aliasing_frequencies.mlapp` |
| Sampling and aliasing illustrated in the frequency domain                   | Matlab-app | `aliasing_frequency.mlapp` |
| Simple demonstration of aliasing                                            | Matlab-app | `aliasing_simple.mlapp` |
| Sampling of stripes in image, Moire-pattern                                 | Matlab-app |  `moire_sampling.mlapp` |

### Filters
| Description  | Type | Function Name | 
| -- | -- | -- | 
| Frequency response of FIR-filter               | Matlab-app | `fir_frequency.mlapp` |
| Simple bandpass FIR-filter                     | Matlab-app | `fir_simple_bandpass.mlapp` |
| Response of IIR-filter                         | Matlab-app | `iir_filter.mlapp`  |
| Response of IIR-filter                         | Matlab-function | `iir_response.m`  |
| Running-average FIR-filter                     | Matlab-function | `running_average_example.mlapp` |
| Illustration of the Dirichle-kernel            | Matlab-app      |  `dirichletkernel.mlapp` |
| 3D illustration of pole-zero plot in the z-plane| Matlab-function |  `pole_zero_3d.m` |
  
### Support Functions
| Description  | Type | Function Name | 
| -- | -- | -- | 
| Scale x- and y-axes in units of &pi; | Matlab-function | `pi_scaled_axis.m` |

## SPE590 Specialisation Topic (Acoustics and Ultrasound Technology)
| Description  | Type | Function Name | 
| -- | -- | -- | 
| Beam profile from a single-element ultrasound transducer    | Matlab-app | `element_beamprofile.mlapp` |
| Beam profile from ultrasound transducer array               | Matlab-app | `array_beamprofile.mlapp`  |
| Theory and illlustration of radiated field from a single-element transducer | JupyterLab widget |  `radiated-field-single-element-transducer.ipynb` |
| Simple illustration of pulse length and bandwidth                           | JupyterLab widget | `pulse-length-and-bandwidth.ipynb` |
  
