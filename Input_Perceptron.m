% Arshia Moftakhari
% 40211704
% Dr. Chiniforoushan--Neural Network

clc
clear

%% *Recognition_Fruit_Perceptron 
disp('Second EX. ---- Input for Recognition_Fruit_Perceptron (Bananas and Pineapples)')
input_fruit = [-1 -1 -1]; 
[classification_result, a] = EX_2_recognition_fruit_perceptron(input_fruit);
disp(classification_result); 
disp(['Activation output a: ', num2str(a)]); 
disp('%%%%')

%% 
disp('First Valid --- Input for Recognition_Fruit_Perceptron')
input_fruit = [-1 -1 1]; 
[classification_result, a] = EX_2_recognition_fruit_perceptron(input_fruit);
disp(classification_result); 
disp(['Activation output a: ', num2str(a)]); 
disp('%%%%')

%% 
disp('Second Valid --- Input for Recognition_Fruit_Perceptron')
input_fruit = [-1 -1 1]; 
[classification_result, a] = EX_2_recognition_fruit_perceptron(input_fruit);
disp(classification_result); 
disp(['Activation output a: ', num2str(a)]); 
disp('%%%%')

%% 
disp('Third Valid --- Input for Recognition_Fruit_Perceptron')
input_fruit = [1 1 1]; 
[classification_result, a] = EX_2_recognition_fruit_perceptron(input_fruit);
disp(classification_result); 
disp(['Activation output a: ', num2str(a)]); 
disp('%%%%')

