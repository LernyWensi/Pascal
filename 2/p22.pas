program p22;
var
    a, b, c: real;
begin
    writeln('Введите длинны сторон треугольника, соответственно a, b, c: ');
    read(a, b, c);
    writeln('Медиана проведенная к стороне a = ', sqrt((2 * sqr(b) + 2 * sqr(c) - sqr(a)) * 0.25):0:2); 
    writeln('Медиана проведенная к стороне b = ', sqrt((2 * sqr(a) + 2 * sqr(c) - sqr(b)) * 0.25):0:2);
    write('Медиана проведенная к стороне c = ', sqrt((2 * sqr(a) + 2 * sqr(b) - sqr(c)) * 0.25):0:2);
end.