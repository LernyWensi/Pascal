program p17;
var
    a, b: real;
begin
    writeln('Введите a и b: ');
    read(a, b);
    write('Cреднее геометрическое a и b = ', sqrt(a * b):0:2);
end.