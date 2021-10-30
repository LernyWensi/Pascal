program p2_3;
type
    matrix = array of array of integer;
var
    n, row, column, randomRange: integer;
    A, B, AB, BA, result: matrix;
    
    procedure renderMatrix(matrix: matrix);
        begin
            for row := 0 to n - 1 do
                begin
                    for column := 0 to n - 1 do
                        write(matrix[row, column], ' ');
                    writeln();
                end;
            writeln();
        end;
        
    function multiMatrix(firstMatrix, secondMatrix: matrix):matrix;
        var
            highRow, tmpValue: integer;
            returnMatrix: matrix;
        begin
            tmpValue := 0;
            setlength(returnMatrix, n, n);
            
            for highRow := 0 to n - 1 do
                begin
                    for column := 0 to n - 1 do
                        begin
                            for row := 0 to n - 1 do
                                begin
                                    write('(', firstMatrix[highRow, row], ' * ', secondMatrix[row, column], ')');
                                    tmpValue := tmpValue + firstMatrix[highRow, row] * secondMatrix[row, column];   
                                    if row <> n - 1 then
                                        write(' + ');
                                end;
                            write(' = ', tmpValue);
                            if column <> n - 1 then
                                write(' | ');
                            returnMatrix[highRow, column] := tmpValue;
                            tmpValue := 0;
                        end;
                    writeln();
                end;
            multiMatrix := returnMatrix;
            writeln();
        end;
begin
    randomize();
    
    writeln();
    
    write('Set order of matrices = ');
    read(n);
    
    write('Set range of random = ');
    read(randomRange);
    
    setlength(A, n, n);
    setlength(B, n, n);
    setlength(result, n, n);

    writeln();
    
    for row := 0 to n - 1 do
        for column := 0 to n - 1 do
            begin
                A[row, column] := random(randomRange);
                B[row, column] := random(randomRange);
            end;
     
    writeln('Matrix A:');      
    renderMatrix(A);
    
    writeln('Matrix B:');      
    renderMatrix(B);
    
    writeln('A * B calculations:');
    AB := multiMatrix(A, B);
    
    writeln('B * A calculations:');
    BA := multiMatrix(B, A);
    
    writeln('AB Matrix:');      
    renderMatrix(AB);
    
    writeln('BA Matrix:');      
    renderMatrix(BA);
    
    for row := 0 to n - 1 do
        for column := 0 to n - 1 do
            result[row, column] := AB[row, column] - BA[row, column];
            
    writeln('result:');
    renderMatrix(result);
end.

