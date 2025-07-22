function [classification_result, a] = EX_2_recognition_fruit_perceptron(input_fruit)

    
    weights = [0 1 -1];  % weights and bias for banana vs pineapple
    bias = 0;
    net_input = weights * input_fruit' + bias; 
    
    a = hardlims(net_input);
    if a == 1
        classification_result = 'The input object is a banana.';
    else
        classification_result = 'The input object is a pineapple.';
    end
end
