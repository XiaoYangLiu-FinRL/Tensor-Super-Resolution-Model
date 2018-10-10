# Tensor-Super-Resolution-Model
This repository is the implement of the following paper:<br>
>Tensor Sparse Coding for Generating High-granularity 3D Seismic Data
In this paper, we propose a seismic trace interpolation method based on tensor sparse coding for 3D seismic data, that training a high-granularity dictionary and a low-granularity dictionary.<br>

## Ditionary training model
The training model for low- and high-granunarity dictionaries pair show in the figure.<br>
![model](https://github.com/hust512/Tensor-Super-Resolution-Model/blob/master/0.png?raw=true)<br>
run 'D_Training.m' in 'SR' file for training the dictionaries pairs, get the low- and high-granularity dictionaries 'Dh' and 'Dl' in the file 'Dictionary' 

## Evaluation
This Pic is the Original Seismic Data<br>
![Original Seismic](https://github.com/hust512/Tensor-Super-Resolution-Model/blob/master/SR/Result/Ori.png?raw=true)<br>
This Pic is the low-granularity Seismic Data<br>
![low-granularity](https://github.com/hust512/Tensor-Super-Resolution-Model/blob/master/SR/Result/L.png?raw=true)<br>
This Pic is the high-granularity Seismic Data<br>
![high-granularity](https://github.com/hust512/Tensor-Super-Resolution-Model/blob/master/SR/Result/H.png?raw=true)<br>
This is our algorithm to generating high-granularity seismic dara for single trace.<br>
![SR Error](https://github.com/hust512/Tensor-Super-Resolution-Model/blob/master/SR/Result/SrErr.png?raw=true)<br>
