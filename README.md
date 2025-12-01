# Micro-Doppler Feature Extraction in MATLAB  

This repository contains a MATLAB function designed for extracting signal features from micro-Doppler signatures. The implemented algorithm processes time-frequency representations of radar returns to derive meaningful characteristics for target classification and analysis.  

## Features  
- Computes key micro-Doppler descriptors from input spectrograms  
- Supports time-frequency representations obtained from short-time Fourier transform (STFT)  
- Efficient implementation optimized for large datasets  
- Can be adapted for various radar applications, including human activity recognition and drone detection  

## Data Source  
The input data used for feature extraction comes from a publicly available dataset provided by researchers. The dataset and its methodology are detailed in the following publications:  

- **H. C. Kumawat, M. Chakraborty, A. A. Bazil Raj and S. V. Dhavale, "DIAT-μSAT: Small Aerial Targets’ Micro-Doppler Signatures and Their Classification Using CNN," in IEEE Geoscience and Remote Sensing Letters, vol. 19, pp. 1-5, 2022, Art no. 6004005, doi: 10.1109/LGRS.2021.3102039**  
- **H. C. Kumawat, M. Chakraborty and A. A. B. Raj, "DIAT-RadSATNet—A Novel Lightweight DCNN Architecture for Micro-Doppler-Based Small Unmanned Aerial Vehicle (SUAV) Targets’ Detection and Classification," in IEEE Transactions on Instrumentation and Measurement, vol. 71, pp. 1-11, 2022, Art no. 8504011, doi: 10.1109/TIM.2022.3188050**

## Citation
All scripts included in this repository are free to use for academic and non-commercial research purposes. If you use this code or obtain results using these scripts for a scientific publication, we kindly ask you to cite the following article: **U. Libal, A. Wielgus, D. Podgórski and K. Abratkiewicz, "Micro-Doppler-Based UAVs Classification Using Improved Quantum Genetic SVM," 2025 33rd European Signal Processing Conference (EUSIPCO), Palermo, Italy, 2025, pp. 2347-2351.** (https://ieeexplore.ieee.org/document/11226353)
Proper acknowledgment helps support ongoing research and development of open-source tools.

Please cite these references if you use the dataset in your research.  
@INPROCEEDINGS{11226353,

  author={Libal, Urszula and Wielgus, Agnieszka and Podgórski, Dawid and Abratkiewicz, Karol},
  
  booktitle={2025 33rd European Signal Processing Conference (EUSIPCO)},   
  
  title={Micro-Doppler-Based UAVs Classification Using Improved Quantum Genetic SVM},   
  
  year={2025},  
  
  volume={},  
  
  number={},  
  
  pages={2347-2351},  
  
  doi={}}
