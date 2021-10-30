program p5;
var
    a, b, c: real;
begin
    writeln('Введите a, b и c: ');
    read(a, b, c);
    
    if (a > b) and (b > c) then
        write('a = ', a * 2:0:2, ' b = ', b * 2:0:2, ' c = ', c * 2:0:2)
    else
        write('a = ', a - a * 2:0:2, ' b = ', b - b * 2:0:2, ' c = ', c - c * 2:0:2)
end.