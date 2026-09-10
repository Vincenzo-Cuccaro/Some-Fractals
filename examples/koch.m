clear
clc

ifs(:, :, 1) = [1/3,          0.0,          0; 
                0.0,          1/3,          0               ];
ifs(:, :, 2) = [cos(pi/3)/3, -sin(pi/3)/3,  1/3; 
                sin(pi/3)/3,  cos(pi/3)/3,  0               ];
ifs(:, :, 3) = [cos(pi/3)/3,  sin(pi/3)/3,  1/2; 
               -sin(pi/3)/3,  cos(pi/3)/3,  1/(2*sqrt(3))   ];
ifs(:, :, 4) = [1/3,          0.0,          2/3; 
                0.0,          1/3,          0               ];


seed = polyshape([0, 0; ...
                  0, 1; ...
                  1, 1; ...
                  1, 0]);

iter = 0 : 7;

plotShape = [4, 2];

plotConvergence(seed, iter, ifs, plotShape);