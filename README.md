# Visual Neuron Decoding

This project determined the visual stimulus of a mouse visual cortex neuron. Data used in this analysis was collected
by the Allen Institute, where spiking activity was recorded of an immobilized mouse watching a video of random
white noise. Data was processed into two parts. The first was spikeTrain, a vector of the times during which the neuron 
fired (1 for fired, 0 for not fired). The second, stim, was a 3D array of the white noise with dimensions 11x11xtime.
Combined, this data shows both an indication of whether there was spike, and if there was, the respective white noise displayed.
