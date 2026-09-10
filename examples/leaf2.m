clear
clc

ifs(:, :, 1) = [2/3, 0.0,  0.2; 
                0.0, 5/6,  1/6  ];
ifs(:, :, 2) = [0,   1/3,  1/2; 
               -1/2, 0.1,  1/2  ];
ifs(:, :, 3) = [0,  -1/4,  1/2; 
                1/3, 0.2,  0.1  ];

seed = polyshape([0, 0; ...
                  1/2, 1; ...
                  1, 0]);

iter = [0, 3, 5, 7];

plotShape = [2, 2];

plotConvergence(seed, iter, ifs, plotShape);