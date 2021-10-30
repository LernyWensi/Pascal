program p2;
var
    x, y, z: real;
begin
    writeln('Введите x, y и z: ');
    read(x, y, z);
    
    if x + y + z > x * y * z then
        writeln('max(x + y + z, x * y * z) = ', (x + y + z):0:2)
    else
        writeln('max(x + y + z, x * y * z) = ', (x * y * z):0:2);

    if x + y + z / 2 < x * y * z then
        writeln('min^2(x + y + z / 2, x * y * z) + 1 = ', sqr(x + y + z / 2) + 1:0:2)
    else
        writeln('min^2(x + y + z / 2, x * y * z) + 1 = ', sqr(x * y * z) + 1:0:2)
end.