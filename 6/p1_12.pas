program p1_12;
var 
    length, randomRangeStart, randomRangeEnd, i: integer;
    initial: array of real;
begin
    randomize();

    write('length of array = ');
    read(length);
    setlength(initial, length); 
    
    writeln('range of random: ');
    write('  from: ');
    readln(randomRangeStart);
    write('  to: ');
    readln(randomRangeEnd);
    
    for i := 1 to length do
        begin
            initial[i] := random(randomRangeEnd - randomRangeStart + 1) + randomRangeStart;
            write('initial[', i, '] = ', initial[i]:0:2);
            
            if initial[i] < 0 then
                initial[i] := initial[i] + 0.5;
            if  initial[i] > 0 then
                initial[i] := initial[i] + 0.1;
            if initial[i] = 0 then 
                initial[i] := initial[i];
                
            writeln(' after = ', initial[i]:0:2, ' ');
        end;
    
end.

