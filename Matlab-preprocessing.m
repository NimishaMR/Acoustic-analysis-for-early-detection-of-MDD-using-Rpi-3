fs=4000; channels=1; bits=16; 
r=audiorecorder(fs, bits, channels);

%to record a voice for a specific time period, say 5secs
duration = 20;
disp('Recording started');
recordblocking(r, duration);
disp('Recording stopped');
%to extract the audio data array from the r variable and plot and listen to
%it
X= getaudiodata(r);
%sound(X, fs, bits);

%to plot the signal in time and frequency domains, the x- axes for both
%should be defined
t=0:1/fs:(length(X)-1)/fs;  %length(X)-1/fs= duration of the signal = 5
figure(1);
subplot(2,1,1);
plot(t, X, 'LineWidth', 1.5);
xlabel('time (sec)');
ylabel('Amplitude');
title('Time domain plot of the recorded signal');

n=length(X);
f= 0:(n-1)*fs/n;
Y = fft(X,n);
%shifting the axis to centre
F_0= (-n/2:n/2-1)*(fs/n);
Y_0= fftshift(Y);  %can have complex values as well
AY_0= abs(Y_0);
figure(2);
subplot(2,1,2);
plot(F_0, AY_0, 'LineWidth', 1.5);
xlabel('Frequency in Hertz');
ylabel('Amplitude');
title('Frequency domain plot of audio signal');
%to save the audio signal as my_voice
filename='myvoice.wav';
audiowrite(filename, X, fs);

%To plot the spectrogram (Time vs Frequency plot of the recorded audio
%signal
figure(3);
spectrogram(X, 128, 120, 128, 1E3, 'yaxis');  %audio,Divide the signals into 128-sample segments,Specify 120 samples of overlap between adjoining segments, specify a DFT length of 128 samples,freq is in y axis,default hamming window

%To extract MFCC coeeficients
[coeffs,delta,deltaDelta,loc] = mfcc(X,fs);
%plotting the mfcc
%the first step is to obtain the periodogram, the power/frequency(power
%density) vs frequency, which says frequency change is noticeable in the
%lower frequency range than in the higher for human ear
%second step is to approximate the results using DCT
figure(4);
imagesc(coeffs);
axis auto
colormap("jet");
xlabel("Time");
ylabel('Coefficients');
title('Mel frequency cepstrum coefficients');

figure(5);
histogram(X);
title('histogram of speech');
