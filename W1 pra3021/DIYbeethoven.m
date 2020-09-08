filename = 'beethoven_5th_samplecompress.wav'

[y,v_s] = audioread(filename);
##sound(y, v_s) ##Audio is so compressed this 'sound' doesn't work



##plot(y);
S_p = (1/v_s) ##Sampling period

z = abs(fft(y))##fft used as DFT_F produced matrix multiplication larger than 2^32

N = length(y)

for i = [0:N]
  if i > 400 & i < 5000 ##Keeps recurring infinitley, not sure why.
    z(i) = 0
  endif


endfor

