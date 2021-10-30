program p12;
var
    a, b: real;
begin
    writeln('Введите a и b: ');
    read(a, b);
    writeln('Сумма a и b = ', a + b:0:2); 
    writeln('Разность a и b = ', a - b:0:2); 
    write('Произведение a и b = ', a * b:0:2);
end.