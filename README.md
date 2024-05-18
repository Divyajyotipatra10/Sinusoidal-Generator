# Sinusoidal-Generator
In this project, I have written a LUT based code to generate sine or cose wave based on the type of the digital input it receives. For 1 the waveform comes out to be same. But then when a 0 comes, then based on bipolar conditions we get 180 degree phase shifted signal. At the these consecutive two bits get added as signed integer and stored.
Example output has been attached below:-
![image](https://github.com/Divyajyotipatra10/Sinusoidal-Generator/assets/96006198/da173948-bc38-4cb3-82b1-128ec1db7d5e)

It is basically a try to achieve QPSK. This code will be further used in achieving QPSK on a 8 bit datastream.
In this waveform posted above we have checked the QPSK for 4 cases.
![image](https://github.com/Divyajyotipatra10/Sinusoidal-Generator/assets/96006198/b4b6dc91-6de7-4ce3-9c44-073b62989ac4)
