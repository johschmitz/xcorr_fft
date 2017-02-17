function [ h ] = xcorr_fft( a, b )
%XCORR_FFT Calculates the crosscorrelation of the two input vectors
%   using the fft based method
%
% Author: Johannes Schmitz, Oct. 16, 2013
%         schmitz@ti.rwth-aachen.de

% zeropad to the same length M + length of correlation 2M-1
if (length(a) < length(b))
    c = [ zeros(1,length(b)-1) a zeros(1,length(b)-length(a)) ];
    d = [ b zeros(1,length(b)-1) ];
else
    c = [ zeros(1,length(a)-1) a ];
    d = [ b zeros(1,length(a)-length(b)+length(a)-1) ];
end

% calculate crosscorrelation
e = fft(c);
f = fft(d);

g = e.*conj(f);

h = ifft(g);

end