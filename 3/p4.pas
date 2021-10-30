program p4;
var
    a, b, c, x: real;
begin
    writeln('Введите x: ');
    read(x);
    a := sin(x);
    b := cos(x);
    c := ln(x);
    
    if a < b then
        if a < c then
            write('min = a = sin(x) = ', a:0:2)
        else
            write('min = c = ln(x) = ', c:0:2)
    else
        if b < c then
            write('min = b = cos(x) = ', b:0:2)
        else
            write('min = c = ln(x) = ', c:0:2)
end.