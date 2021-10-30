program p12;
var
    a, b, c: real;
begin
    write('Введите три числа: ');
    read(a, b, c);
    if (a < 0) then
        a:= a * a;
    if (b < 0) then
        b:= b * b;
    if (c < 0) then
        c:= c * c;
    write(a:0:2, ' ', b:0:2, ' ', c:0:2);
end.