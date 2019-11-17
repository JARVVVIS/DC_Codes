%Shanon Fano souce coding%
clear;
clc;


probs = input('Enter Probabilities'); 
len_p = length(probs);
global Codes
Codes = repmat('-',len_p,1);
shanon_f(probs,0);
Codes