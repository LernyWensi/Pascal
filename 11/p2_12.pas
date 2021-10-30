program p2_12;
var
    f, g: file of integer;
    number, i, randomRange, amountOfNumbers: integer;
begin
    randomize();
    writeln();
    
    write('Set range of random: ');
    read(randomRange);
    
    write('Set amount of numbers: ');
    read(amountOfNumbers);
    
    writeln();
    
    assign(f, 'f.dat');
    rewrite(f);
    
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
            if odd(number) then
                write(g, number)
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