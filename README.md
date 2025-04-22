# Dormitory Entry Management using Voice Recognition
A Bangla voice-based entry management system for dining room of residential halls in universities. 
In our project, we have collected ID speeches and name speeches from more than 100 students. 
From those speech samples, we have extracted Mel Frequency Cepstral Coefficient (MFCC) features and trained Vector Quantization (VQ) models.
In the testing part, we take ID and name speech from a speaker, extract MFCC features and find two minimum distortion matches from the trained VQ models. 
If the two matches are same, the system grants access otherwise deny access to that individual. The accuracy of our system is satisfactory.

For privacy reasons, all sample data such as voice samples have been excluded.
