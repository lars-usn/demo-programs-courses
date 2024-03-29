function pole_zero_3d( b, a, dispformat, zmax)
% function pole_zero_3d( b, a, dispformat, zmax)
%
%  3D illustration of pole-zero plot in the z-plane, with frequency response
%
%   a  Forward filter coefficients.   
%   b  Backward filter coefficients.  
%
% dispformat (optional)  "dB" for dB-scale display, otherwise linear
%
% Example 1 (Chapter 10-13 in McClellan et sal., DSP first)
%              [b,a]= ellip( 3, 1, 30, 0.3 );  
%              pole_zero_3d( b, a )
%
% Example 2  (Similar to Ex. 1, illustrating different filter topology)  
%              [b,a]= butter( 3, 0.3 );  
%              pole_zero_3d( b, a )

% Lars Hoff, USN, Feb 2023 (Updated April 2023)

if nargin<4, zmax = 0;          end
if nargin<3, dispformat='abs';  end

xmax = 1.5;

%% Create grid
x = linspace( -xmax, xmax, 100);
[ zr, zim ] = meshgrid( x, x );
z = zr + 1i*zim;

%% Calculate and plot response
H = Hz( b, a, z, dispformat );
surf( zr, zim, H, 'EdgeColor', 'none' );

% Create anp plot markers
Np = 100;
phi= linspace( 0, 2*pi, Np );   % Angle vector
zuc= exp( 1i*phi );             % z on unit circle

Huc = Hz(b,a,zuc,   dispformat); % Unit circle
Hre = Hz(b,a,x,    dispformat);  % Real axis
Him = Hz(b,a,1i*x, dispformat);  % Imaginary axis

if zmax==0
    zmax= max( max( abs(Huc) ) );    % Max magnitude on unit circle
end

hold on
plot3( x, zeros(size(x)),    Hre, 'k-', 'linewidth', 1 )
plot3( zeros(size(x)), x,    Him, 'k-', 'linewidth', 1 )
plot3( real(zuc), imag(zuc), Huc, 'k:', 'linewidth', 2 )
hold off

axis equal
zlim([ 0 zmax ]);
clim([ 0 zmax ]);
colorbar

xlabel('Re\{z\}')
ylabel('Im\{z\}')
zlabel('|H(z)|')

end

%% Internal functions
function H = Hz ( b, a, z, dispformat )
N = length(a)-1;
A = zeros(size(z));
for n=0:N
    A = A + a(n+1)*z.^(-n);
end

M = length(b)-1;
B = zeros(size(z));
for k=0:M
    B = B+ b(k+1)*z.^(-k);
end
H = B./A;

switch lower(dispformat)
    case "db",  H = 20*log10(abs(H));
    otherwise,  H = abs(H);
end
end