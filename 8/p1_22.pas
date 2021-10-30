program p1_22;
var
    randomRange, row, column, N, M, min: integer;
    A: array of array of integer;
begin
    randomize();
    
    writeln();
    
    write('Set rows and columns for matrix = ');
    read(M, N);
    
    write('Set range of random = ');
    read(randomRange);
    
    setlength(A, N, M);
    
    writeln();
    
    
    for row := 0 to M - 1 do
        for column := 0 to N - 1 do
            A[row, column] := random(randomRange + 1);
            
    for row := 0 to M - 1 do
        begin
            for column := 0 to N - 1 do
                write(A[row, column], ' ');
            writeln();
        end;
        
    writeln();
        
    for row := 0 to M - 1 do
        begin
            min := randomRange;
            if row mod 2 <> 0 then
                begin
                    for column := 0 to N - 1 do
                        if A[row, column] < min then
                            min := A[row, column];
                    writeln('min for row ', row + 1, ' = ', min);
                end;
        end;
end.

