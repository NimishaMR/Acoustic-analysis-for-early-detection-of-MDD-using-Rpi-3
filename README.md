Welcome to this repo ! This contains the work of my Junior year project titled 

**"Real Time Speech Emotion Recognition using LSTM and Raspberry Pi"** 
Multimodal analysis using Machine learning and embedded systems is becoming largely useful in the early detection of many diseases( including metal health conditions).
I am extremely enthusiastic about this area and up for any useful discussions regarding the same!

**A little insight into the topic**

Early detection and treatment of depression is essential in promoting remission, preventing relapse, and reducing the emotional burden of the disease. Current diagnoses are primarily subjective, inconsistent across professionals, and expensive for individuals who may be in urgent need of help. This paper proposes an effective approach of feature extraction from speech signals of patients to diagnose fluctuations in emotions and mood of people. These observed repetitive emotion patterns are indicative of a patient’s mental health and helps in the treatment of depression. The acoustic feature used for analysis and decision-making in this work is the MFCC (Mel Frequency Cepstral Coefficient). A detailed spectral analysis of the audio files in the DAIC_WOZ database has been carried out using MATLAB to bring out the differences in spectral features of healthy versus depressed individuals. Further, a Long Short-Term Memory (LSTM) has been built with an accuracy score of **86%**, to predict the emotions from voices of different people using the RAVDESS dataset. Validation of the working of our machine learning model has been done using real time voice signals of people which have been collected and processed using Raspberry Pi 3 and this results in a similar accuracy score as the RAVDESS dataset. Hence, speech signal analysis using machine learning to predict depression in patients and a detailed spectral analysis makes the case for our proposed methodology

Commonly used voice quality measures in depression detection could be borrowed from signal-processing methodologies, such as jitter, shimmer, the small cycle-to-cycle variations in glottal pulse amplitude in voiced regions, 
harmonic-to-noise ratio, and the ratio of harmonics to in harmonic components.The correlations of laryngeal biomarkers with psychomotor retardation assessment resulted in improved understanding of the neurophysiological basis for changes in voice quality with depression and human speech degradation.

**Methodology**

Firstly, the DAIC WOZ database which has voice samples of people who have varied levels of depression ranging from very severe to very less has been utilised. These voice samples have been represented in MATLAB as spectrograms using which the fact that speech signals and acoustic features indeed differ greatly from depressed versus healthy individuals has been highlighted. Secondly, using the conclusions drawn from the first section we have developed a deep RNN model based on Long Short-Term Memory (LSTM) which uses the voice samples from the RAVDESS dataset. The result of this model shows that given any voice sample as the input, the model can recognise the emotion in the person’s voice using features like MFCC. The last section validates the model developed in the previous section by feeding real time voice samples instead of dataset voice samples which have been collected and processed using the Raspberry Pi 3 Model B.

**Traditional PHQ8 scoring vs spectrogram approach**

This is what a traditional PHQ8 score table looks like .

<img src="Media/PHQ8.png" width=400> 

Spectrogram analysis provides a much better understanding of acoustic features like MFCC. What sets apart these features is that they cannot be manipulated or hidden according to the patient’s wishes. They provide a quantitative and qualitative measure of emotions in voice which the patient has no control over.

A spectrogram tells you how much energy (PSD) there is at a given frequency at a given time Frequency: Represents how many times per second an element producing sound vibrates. It has three axes, Frequency, Time and Power. Each sound, no matter how simple or complicated, can be split up into frequencies, just as a picture can be split up into pixels

<img src="Media/spectrogram.JPEG" width=400> 
