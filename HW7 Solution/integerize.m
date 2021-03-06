function Name = integerize (A)    DataType = {'int8', 'int16', 'int32', 'int64', 'NONE'};
    Limit    = [2^7, 2^15, 2^31, 2^63, realmax]; 
    A(A<0)   = A(A<0) + 1;                             % must do this for negatives!!!!! 
    Name     = DataType{max(abs(A(:))) < Limit};
end