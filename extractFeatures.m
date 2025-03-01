function [vect] = extractFeatures(filename)
  load(filename, 'data', 'fs');   % load signal samples and fs
  if fs == 20000      % different sampling rates, we need to unify feature vector
      NFFT_spec = 1024;
  else
      NFFT_spec = 512;
  end
  
  data = data-mean(data);         % remove DC, data - signal with original fs
  d=fs/100;                       % decimation factor
  data1=decimate(data, d);        % data1 - decimated signal
  fs1=fs/d;                       % scaled sampling rate
  data1=highpass(data1,5,fs1);    % remove clutter and slow-moving echo
  [r, ~]=size(data1);
  np2r=2^(nextpow2(r)-2);         % FFT size
  v=fft(data1, np2r)/np2r;        % spectrum
  v=v./max(abs(v));               % spectrum normalization
  N21 = np2r/2 + 1;
  f = linspace (0, fs1/2, N21);   % frequency axis
  w = abs(v);                     % spectrum magnitude
  [~,lsor] = findpeaks(w(1:N21),f,'SortStr','descend'); % find peaks in spectrum and sort them
  vect1=lsor(1:5);                % five the strongest peaks
  [s,f2,~] = spectrogram(data,256,250,NFFT_spec,"centered",fs);   % spectrogram
  [~,idx]=min(abs(f2-2000));      % find freq. index the closest to 2kHz
  s = s(NFFT_spec/2:idx,:);       % positive half of the spectrogram
  vect2 = db(sum(abs(s),2));      % log-scale of the time-integrated spectrogram
  vect = [vect1';vect2];          % final feature vector
end
