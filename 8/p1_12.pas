program p1_12;
var
    randomRange, row, column, N, M, max, min, minColumn, maxColumn: integer;
    B: array of array of integer;
begin
    randomize();
    
    writeln();
    
    write('Set rows and columns for matrix = ');
    read(N, M);
    
    write('Set range of random = ');
    read(randomRange);
    
    setlength(B, N, M);
    
    writeln();
    
    for row := 0 to N - 1 do
        for column := 0 to M - 1 do
            B[row, column] := random(randomRange + 1);
            
    for row := 0 to N - 1 do
        begin
            for column := 0 to M - 1 do
                write(B[row, column], ' ');
            writeln();
        end;
            
    max := 0;
    min := randomRange;
            
    for row := 0 to N - 1 do
        begin
            min := randomRange;
            max := 0;
            minColumn := 0;
            maxColumn := 0;
            for column := 0 to M - 1 do
                begin
                    if B[row, column] < min then
                        begin
                            min := B[row, column];
                            minColumn := column;
                        end;
                    if B[row, column] > max then
                        begin
                            max := B[row, column];
                            maxColumn := column;
                        end;
                end;
            B[row, minColumn] := B[row, N - 1];
            B[row, N - 1] := min;
            B[row, maxColumn] := B[row, 0];
            B[row, 0] := max;
        end;

    writeln();
    
    for row := 0 to N - 1 do
        begin
            for column := 0 to M - 1 do
                write(B[row, column], ' ');
            writeln();
        end;
    
end.

