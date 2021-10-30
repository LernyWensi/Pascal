program p1;
var
    x, y: real;
begin
    writeln('Введите x и y: ');
    read(x, y);
    if x > y then
        write('max(x, y) = ', x:0:2, ' min(x, y) = ', y:0:2)
    else
        write('max(x, y) = ', y:0:2, ' min(x, y) = ', x:0:2)
end.