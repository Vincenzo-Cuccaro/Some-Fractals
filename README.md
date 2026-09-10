This repository contains a MatLab function plotConvergence for plotting various stages of approximations of fractals in 2D, alongside several examples.

The function takes as input the variables seed, iter, ifs, plotShape. The variable seed contains a polygonal set defined through polyshape, it is the starting set on which we act through successive iterations. Iter must be an array of natural numbers (0 admittable) in ascending order, it describes the algorithm iterations that will be shown in the final plot. The variable ifs is an array of affine maps, each map  $f_i$ being described by a 2x2 matrix ifs([1 2], [1 2], i) and a traslating vector  ifs(3, [1 2], i). plotShape is a bidimentional vector specifying the parameters of subplot, for neat graphical presentation.

The function returns the last polyshape approximation of the fractal.
