% ENE323 Microstrip Patch Antenna Design /Matlab
% 65070502406 Kittiphop Phanthachart

clear all;
clc;

% Input Parameter
er = 4.3   ;   %input('Relative Permittivity(er): ');
lt = 0.025 ;   %input('Dielectric loss tangent(lt): ');
h  = 0.8   ;   %input('Thickness(h[mm]): ');
fr = 7     ;   %input('Resonant Frequency(fr[GHz]): ');


% The Constant
c = 299792458; % Speed of light


% Unit Transformation
h = h*1e-3;    % to mm
fr= fr*1e9;    % to GHz


% Calculation
wp      = (c/(2*fr))*(sqrt((2)/(er+1)))

e_eff   = ((er+1)/2)+((er-1)/(2*sqrt(1+(12*(h/wp))) ))

delta_L = (h*0.412*(e_eff+0.3)*((wp/h)+0.264 ))/((e_eff-0.258)*( (wp/h)+0.813))

lp      = (c/(2*fr*sqrt(e_eff)))-(2*delta_L)

wg      = wp + (6*h)

lg      = lp + (6*h)

G1      = (1/120)*(wp/(c/fr))

y0      = acos(sqrt(50*2*G1))*(wp/pi)