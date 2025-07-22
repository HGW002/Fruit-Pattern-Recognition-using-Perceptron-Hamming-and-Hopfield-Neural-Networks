
clc
clear

%% *Recognition_Fruit_Hamming* 
disp('Input for Recognition_Fruit_Hamming')
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%')

input_vectors = {[-1; -1; 1], [1; 1; -1], [-1; 1; -1], [1; -1; 1]}; 
results = cell(length(input_vectors), 4);


for i = 1:length(input_vectors) 
    input_fruit = input_vectors{i};  
    [result, a, k] = EX_2_Recognition_Fruit_Hamming(input_fruit);   
    
    results{i, 1} = mat2str(input_fruit);      
    results{i, 2} = result;                   
    results{i, 3} = mat2str(a');              
    results{i, 4} = k;                        % number of iterations
end

T = cell2table(results, 'VariableNames', {'Input_Vector', 'Classification', 'Final_Values', 'Iterations'});
disp(T);  
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%')
