function [result, a, k] = EX_2_Recognition_Fruit_Hamming(input_fruit)
    %% Define the reference patterns
    p1 = [-1; 1; -1]; % Vector for "banana"
    p2 = [-1; -1; 1];  % Vector for "pineapple"
    
    %% Feedforward 
    R = size(p1, 1);
    w1 = [p1'; p2'];
    b1 = [R; R];
    a1 = w1 * input_fruit + b1;

    %% Recurrent 
    e = 0.5; 
    w2 = [1 -e; -e 1]; 
    a2 = a1;
    max_iterations = 20; 
    for k = 1 : max_iterations
        a2_new = poslin(w2 * a2);
        if isequal(a2_new, a2)
            break;
        else
            a2 = a2_new;
        end
    end
    
    %% Final output
    a = a2; 
    if a(1) > a(2)
        result = 'The input object is a banana.';
    elseif a(2) > a(1)
        result = 'The input object is a pineapple.';
    else
        result = 'The object could not be distinguished clearly.';
    end
end

