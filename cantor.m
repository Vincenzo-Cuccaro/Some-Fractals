clear
clc

ifs(:, :, 1) = [1/3, 0.0, 0; 
                0.0, 1/3, 1/3   ];
ifs(:, :, 2) = [1/3, 0.0, 2/3; 
                0.0, 1/3, 1/3   ];

seed = polyshape([0, 0; ...
                  0, 1; ...
                  1, 1; ...
                  1, 0]);

iter = 0 : 5;

plotShape = [4, 2];

plotConvergence(seed, iter, ifs, plotShape);