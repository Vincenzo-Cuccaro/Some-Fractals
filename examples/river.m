clear
clc

ifs(:, :, 1) = [2/5, 0.0, 0; 
                0.0, 1/4, 0   ];
ifs(:, :, 2) = [1/5, 0.0, 2/5; 
                0.0, 1/2, 1/4 ];
ifs(:, :, 3) = [2/5, 0.0, 3/5; 
                0.0, 1/4, 3/4 ];

seed = polyshape([0, 0; ...
                  0, 1; ...
                  1, 1; ...
                  1, 0]);

iter = 0 : 7;

plotShape = [4, 2];

plotConvergence(seed, iter, ifs, plotShape);