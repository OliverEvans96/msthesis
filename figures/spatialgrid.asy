settings.outformat = "png";
settings.prc = false;
settings.render = 4;
settings.maxtile = (100, 100);

import graph3;

size(200,0);
currentprojection=perspective(4,1,2.5);

// Custom short dash
pen shortdashed=linetype(new real[] {4,4});

// Define pens
pen mesh_pen = black+linewidth(0.5);
pen surf_pen = lightgray+opacity(.6);
//pen water_surf_pen = lightblue+opacity(.6);
pen dot_pen = gray(0.2)+linewidth(3);
pen water_dot_pen = gray(0.2)+linewidth(3);
pen grid_pen = gray(0.2)+linewidth(.5)+shortdashed;

// Grid limits
real xmin = -1;
real xmax = 1;
real ymin = -1;
real ymax = 1;
// z goes downward
real zmin = 0;
real zmax = -1;

// Number of points (centers)
int nx = 4;
int ny = 4;
int nz = 4;

// Determine spacings
real dx = (xmax - xmin) / nx;
real dy = (ymax - ymin) / ny;
real dz = (zmax - zmin) / nz;

// Use global variables for mesh
real x_line, y_line, z_line;
path3 path;
real x, y, z;
surface x_plane, y_plane, z_plane;
real x_plane_pos, y_plane_pos, z_plane_pos;

triple x_plane_func(pair t) {
  return (x_plane_pos, t.y, t.x);
}

triple y_plane_func(pair t) {
  return (t.x, y_plane_pos, t.y);
}

triple z_plane_func(pair t) {
  return (t.x, t.y, z_plane_pos);
}

// z lines
for(int i=1; i<=nx; ++i) {
  x_line = xmin + (i-.5)*dx;
  for(int j=1; j<=ny; ++j) {
    y_line = ymin + (j-.5)*dy;
    draw((x_line,y_line,zmin) -- (x_line,y_line,zmax), grid_pen);
  }
}

// y lines
for(int i=1; i<=nx; ++i) {
  x_line = xmin + (i-.5)*dx;
  for(int k=1; k<=nz; ++k) {
    z_line = zmin + (k-.5)*dz;
    draw((x_line,ymin,z_line) -- (x_line,ymax,z_line), grid_pen);
  }
}

// x lines
for(int k=1; k<=nz; ++k) {
  z_line = zmin + (k-.5)*dz;
  for(int j=1; j<=ny; ++j) {
    y_line = ymin + (j-.5)*dy;
    draw((xmin,y_line,z_line) -- (xmax,y_line,z_line), grid_pen);
  }
}

// x planes
for(int i=1; i<=nx+1; ++i) {
    x_plane_pos = xmin + (i-1)*dx;
    x_plane = surface(x_plane_func, (zmin, ymin), (zmax, ymax), nz, ny);
    draw(x_plane, surf_pen, meshpen=mesh_pen, nolight);
}

// y planes
for(int j=1; j<=ny+1; ++j) {
    y_plane_pos = ymin + (j-1)*dy;
    y_plane = surface(y_plane_func, (xmin, zmin), (xmax, zmax), nx, nz);
    draw(y_plane, surf_pen, meshpen=mesh_pen, nolight);
}

// Draw first z plane separately
// z_plane_pos = zmin;
// z_plane = surface(z_plane_func, (xmin, ymin), (xmax, ymax), nx, ny);
// draw(z_plane, water_surf_pen, meshpen=mesh_pen, nolight);

// z planes
for(int k=1; k<=nz+1; ++k) {
    z_plane_pos = zmin + (k-1)*dz;
    z_plane = surface(z_plane_func, (xmin, ymin), (xmax, ymax), nx, ny);
    draw(z_plane, surf_pen, meshpen=mesh_pen, nolight);
}

// Draw dots
for(int i=1; i<=nx; ++i) {
  x = xmin + (i-0.5)*dx;
  for(int j=1; j<=ny; ++j) {
    y = ymin + (j-0.5)*dy;
    for(int k=1; k<=nz; ++k) {
      z = zmin + (k-0.5)*dz;
      dot((x,y,z), dot_pen);
    }
  }
}

// Draw dots on surface
for(int i=1; i<=nx; ++i) {
  x = xmin + (i-0.5)*dx;
  for(int j=1; j<=ny; ++j) {
    y = ymin + (j-0.5)*dy;
    dot((x,y,zmin), water_dot_pen);
  }
}

// Draw surface
//surface sph=surface(plane_func, (xmin, xmax), (thetamax, phimax), ntheta_surf, nphi_surf);
//draw(sph,surf_pen,nolight);
