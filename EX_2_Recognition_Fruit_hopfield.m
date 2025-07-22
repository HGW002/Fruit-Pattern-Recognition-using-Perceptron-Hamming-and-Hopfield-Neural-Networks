function [final_output, k, fruit] = EX_2_Recognition_Fruit_hopfield(p)
    %% Weight matrix and bias vector 
    w = [0.2 0 0; 0 1.2 0; 0 0 1.2];  
    b = [-0.9; 0; 0];  
    a = p;

    %% Iterative update until stable output
    k = 0;
    while true
        k = k + 1;
        a_new = satlins(w * a + b); 
        if isequal(a_new, a)
            break;
        else
            a = a_new;  
        end
    end
    
    final_output = a;
    
    %% Final output classification
    if isequal(final_output, [-1; 1; -1])
        fruit = 'The input object is a Banana';
    elseif isequal(final_output, [-1; -1; 1])
        fruit = 'The input object is a Pineapple';
    else
        fruit = 'The object could not be distinguished clearly';
    end
end
