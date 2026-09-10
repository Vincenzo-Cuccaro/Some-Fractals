clear
clc

ifs(:, :, 1) = [0.5, 0.0, 0; 
                0.0, 0.5, 0    ];
ifs(:, :, 2) = [0.5, 0.0, 0.5; 
                0.0, 0.5, 0    ];
ifs(:, :, 3) = [0.5, 0.0, 0.25; 
                0.0, 0.5, 0.5  ];

seed = polyshape([0, 0; ...
                  0, 1; ...
                  1, 1; ...
                  1, 0]);

iter = 0 : 7;

plotShape = [4, 2];

plotConvergence(seed, iter, ifs, plotShape);