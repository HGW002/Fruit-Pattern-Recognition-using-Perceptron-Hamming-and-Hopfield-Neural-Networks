
clc;
clear;

%% *Recognition_Fruit_Hopfield* 
disp('Input for Recognition_Fruit_Hopfield');
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%');
input_vectors = {[-1; 1; -1], [-1; -1; 1],[1; -1; 1],[1; 1; -1]}; 

results = cell(length(input_vectors), 4);

for i = 1:length(input_vectors)
    p = input_vectors{i};   
    [final_output, iterations, fruit] = EX_2_Recognition_Fruit_hopfield(p); 
       
    % Store results
    results{i, 1} = mat2str(p);               
    results{i, 2} = fruit;                    
    results{i, 3} = mat2str(final_output');   
    results{i, 4} = num2str(iterations);      % Number of iterations
end


T = cell2table(results, 'VariableNames', {'Input_Vector', 'Classification', 'Final_Values', 'Iterations'});
disp(T);
disp('%%%%%%%%%%%%%%%%%%%%%%%%%%');
