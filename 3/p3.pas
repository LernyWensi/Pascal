program p3;
var
    a, b, c: real;
begin
    writeln('Введите a, b и c: ');
    read(a, b, c);
    if (a < b) and (b < c) then
        write('a < b < c = true')
    else
        write('a < b < c = false')
end.