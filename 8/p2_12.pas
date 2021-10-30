program p2_12;
var
    n, row, column, randomRange: integer;
    A: array of array of integer;
    vectorX, vectorY, finalVector, result: array of integer;
begin
    randomize();
    
    writeln();
    
    write('Set order of matrix and length for vectors = ');
    read(n);
    
    write('Set range of random = ');
    read(randomRange);
    
    setlength(A, n, n);
    setlength(vectorX, n);
    setlength(vectorY, n);
    setlength(finalVector, n);
    setlength(result, n);
    
    writeln();
    
    for row := 0 to n - 1 do
        for column := 0 to n - 1 do
            A[row, column] := random(randomRange);
            
    for column := 0 to n - 1 do
        begin
            vectorX[column] := random(randomRange);
            vectorY[column] := random(randomRange);
        end;

    for row := 0 to n - 1 do
        begin
            for column := 0 to n - 1 do
                write(A[row, column], ' ');
            writeln();
        end;
    
    writeln();
    write('vectorX = '); 
    for column := 0 to n - 1 do
        write(vectorX[column], ' ');
        
    writeln();
    write('vectorY = ');
    for column := 0 to n - 1 do 
        write(vectorY[column], ' ');
    
    writeln();
    writeln();
    
    write('finalVector = ');
    for column := 0 to n - 1 do
        begin
            finalVector[column] := vectorY[column] + vectorX[column];
            write(finalVector[column], ' ');
        end;
        
    writeln();
    writeln();
    for row := 0 to n - 1 do
        begin
            for column := 0 to n - 1 do
                begin
                    write('(', A[row, column],' * ', finalVector[column], ') ');
                    A[row, column] := A[row, column] * finalVector[column];
                end;
            writeln();
        end;
        
    writeln();    
    
    for row := 0 to n - 1 do
        begin
            for column := 0 to n - 1 do
                write(A[row, column], ' ');
            writeln();
        end;
    
    writeln();
    for column := 0 to n - 1 do
        for row := 0 to n - 1 do
            result[column] := result[column] + A[column, row];
            
    write('result = ');
    for column := 0 to n - 1 do 
        write(result[column], ' ');

end.
