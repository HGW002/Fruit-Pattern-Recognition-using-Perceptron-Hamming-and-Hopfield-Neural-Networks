# Fruit-Pattern-Recognition-using-Perceptron-Hamming-and-Hopfield-Neural-Networks
MATLAB implementation of Perceptron, Hamming, and Hopfield neural networks to classify fruit patterns based on sensor input data (shape, texture, and weight). This project is based on Exercise E3.1 from the book "Neural Networks: A Comprehensive Foundation" by Simon Haykin and Martin T. Hagan.

1. Perceptron Network
Training adjusts the weight vector based on error correction.
Sensitive to noise and limited to simple decision boundaries.

2. Hamming Network
Uses the stored prototypes and computes Hamming distance (or similarity).
Applies a winner-take-all strategy to classify.
Performs well with binary or bipolar patterns.

4. Hopfield Network
Stores patterns in a weight matrix using Hebbian learning.
Limited memory capacity and may fall into spurious states.
