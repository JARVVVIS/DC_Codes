%Compare level of quanitzation with SNR for uniform quantization%

clc;
clear all;

N = 10000; %Number of samples%

x_n = randn(1,N);
x_max=max(x_n);
x_min = min(x_n);

x_power = sum(x_n.^2)/N; %Power of unifrom distribution %

for i=1:1:16 %explore 14 diffrent bit lengths%
  L = 2^i;
  step = (x_max-x_min)/L;
  for j=1:1:length(x_n)
    I = floor((x_n(j)-x_min)/step);
    y(j) = x_min+I*step+step/2;
   end
   err = x_n-y;
   noisepow(i) = sum(err.^2)/N;
end

snr = x_power./noisepow;
snr = 10.*log10(snr);
m=1:16;l=2.^m;
plot(l,snr);
title('Uniform Quantization on Gaussian Distribution');
