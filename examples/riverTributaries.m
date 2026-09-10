clear
clc

ifs(:, :, 1) = [2/5, 0.0, 0; 
                0.0, 1/4, 0   ];
ifs(:, :, 2) = [0.0, 1/5, 2/5; 
                1/2, 0.0, 1/4 ];
ifs(:, :, 3) = [2/5, 0.0, 3/5; 
                0.0, 1/4, 3/4 ];
ifs(:, :, 4) = [0.0, 1/3, 2/5; 
               -1/5, 0.0, 1/4 ];

seed = polyshape([0, 0; ...
                  0, 1; ...
                  1, 1; ...
                  1, 0]);

iter = 0 : 7;

plotShape = [4, 2];

plotConvergence(seed, iter, ifs, plotShape);