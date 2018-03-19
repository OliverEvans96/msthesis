settings.outformat = "pdf";
settings.prc = false;
settings.render = 4;
settings.maxtile = (100, 100);

import graph3;

size(200,0);
currentprojection=perspective(4,1,2.5);

// The indexing is probably all convoluted throughout this script,
// but it makes the right picture, which is what matters here.

// Define pens
pen mesh_pen = black+linewidth(0.5);
pen surf_pen = lightgray+opacity(.6);
pen dot_pen = gray(0.2)+linewidth(3);

// Radius of circle
real R=2;

// Number of points for mesh
// Not including periodic image
int ntheta=12;
// Including poles
int nphi=8;

// Number of points for surface
int ntheta_surf = 32;
int nphi_surf = 16;

// Calculate limits for phi to create end caps
real phimin = 0;
real phimax = pi;

// Theta spans full range
real thetamin = 0;
real thetamax = 2*pi;

// Determine spacings
// -1+1 to avoid preiodic repeat
real dtheta = (thetamax - thetamin) / ntheta;
// -1+2 to ignore poles
real dphi = (phimax - phimin) / (nphi-1);

// Redefine phi limits to allow for end caps
real phimin_mesh = phimin + dphi/2;
real phimax_mesh = phimax - dphi/2;

triple sphere_func(pair t) {
  // Polar phi
  // Azimuthal theta
  real theta = t.x;
  real phi = t.y;
  real x = R*sin(phi)*cos(theta);
  real y = R*sin(phi)*sin(theta);
  real z = R*cos(phi);
  return (x, y, z);
}

// Use global variables for mesh
real lat_phi;
real lon_theta;
path3 lat_path;
path3 lon_path;
real x, y, z, theta, phi;

// Latitude lines
triple lat_func(real theta) {
  return (R*sin(lat_phi)*cos(theta), R*sin(lat_phi)*sin(theta), R*cos(lat_phi));
}
for(int m=1; m<=nphi; ++m) {
  lat_phi = phimin + (m-0.5) * dphi;
  lat_path = graph(lat_func, thetamin, thetamax, operator ..);
  draw(lat_path, mesh_pen);
}

// Longitude lines
triple lon_func(real phi) {
  return (R*sin(phi)*cos(lon_theta), R*sin(phi)*sin(lon_theta), R*cos(phi));
}
for(int l=1; l<=ntheta; ++l) {
  lon_theta = thetamin + (l-0.5) * dtheta;
  lon_path = graph(lon_func, phimin_mesh, phimax_mesh, operator ..);
  draw(lon_path, mesh_pen);
}

// Draw dots
// Draw dots at poles
dot((0,0,R), dot_pen);
dot((0,0,-R), dot_pen);
for(int l=1; l<=ntheta; ++l) {
  for(int m=1; m<nphi; ++m) {
    theta = thetamin + l*dtheta;
    phi = phimin + m*dphi;
    real x = R*sin(phi)*cos(theta);
    real y = R*sin(phi)*sin(theta);
    real z = R*cos(phi);
    dot((x,y,z), dot_pen);
  }
}

// Draw surface
surface sph=surface(sphere_func, (thetamin, phimin), (thetamax, phimax), ntheta_surf, nphi_surf);
draw(sph,surf_pen,nolight);
