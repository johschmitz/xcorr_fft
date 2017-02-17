Circular Cross Correlation using FFT for MATLAB
-----------------------------------------------

Rough idea:
Calculate the crosscorrelation ```f``` of two vectors ```a``` and ```b``` by:
```
c = fft(a);
d = fft(b);
```
```
e = c.*conj(d);
```
```
f = ifft(e);
```
See code for a complete version and details like zeropadding and fftshift.
