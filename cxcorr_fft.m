function [ h ] = cxcorr_fft( a,b )
%CXCORR_FFT Calculates the circular crosscorrelation of the two input 
%   vectors using the fft based method
%
% Author: Johannes Schmitz, Oct. 16, 2013
%         schmitz@ti.rwth-aachen.de

% zeropad to the same length M
if (length(a) < length(b))
    c = [ a zeros(1,length(b)-length(a)) ];
    d = b;
else
    c = a;
    d = [ b zeros(1,length(a)-length(b)) ];
end

% calculate crosscorrelation
e = fft(c);
f = fft(d);

g = f.*conj(e);

h = fftshift(ifft(g));

end

