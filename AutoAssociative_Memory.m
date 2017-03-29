clc;
clear all;
close all;
z0 = [-1,1,1,1,-1;1,-1,-1,-1,1;1,-1,-1,-1,1;1,-1,-1,-1,1;-1,1,1,1,-1];
z1 = [-1,-1,1,-1,-1;-1,-1,1,-1,-1;-1,-1,1,-1,-1;-1,-1,1,-1,-1;-1,-1,1,-1,-1];
z2 = [-1,1,1,1,-1;1,-1,-1,1,-1;-1,-1,1,-1,-1;-1,1,-1,-1,-1;1,1,1,1,1];
I = eye(5);
      
wt = (z0 * z0') + (z1 * z1')+ (z2 * z2') - 3 * I;
wt1 = sign(wt);
input = [-1,1,1,1,-1;1,-1,-1,1,-1;-1,-1,1,-1,-1;-1,1,-1,-1,-1;1,1,1,1,1];
outx = sign(wt1*input);