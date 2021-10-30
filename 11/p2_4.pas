program p2_4;
var
    f, g: file of integer;
    number, i, randomRange, amountOfNumbers: integer;
begin
    randomize();
    writeln();
    
    assign(f, 'f.dat');
    rewrite(f);
    
    write('Set range of random: ');
    read(randomRange);
    
    write('Set amount of numbers: ');
    read(amountOfNumbers);
    
    writeln();
    
    for i := 1 to amountOfNumbers do
        write(f, random(randomRange + 1));
    close(f);
    
    assign(g, 'g.dat');
    rewrite(g);
    
    assign(f, 'f.dat');
    reset(f);
    
    for i := 1 to amountOfNumbers do
        begin
            read(f, number);
            if not(odd(number)) then
                write(g, number)
            else if (number mod 3 = 0) and (number mod 7 <> 0) then
                write(g, number);
        end;
    close(g);
    close(f);
    
    assign(g, 'g.dat');
    reset(g);
    
    assign(f, 'f.dat');
    reset(f);
    
    write('f.dat: ');
    while not(eof(f)) do
        begin
            read(f, number);
            write(number, ' ')
        end;
        
    writeln();
    
    write('g.dat: ');
    while not(eof(g)) do
        begin
            read(g, number);
            write(number, ' ')
        end;
        
    close(g);
    close(f);
end.