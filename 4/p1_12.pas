program p1_12;
var
    a, b, n, i: integer;    
begin
    write('Введите числа a и b (a < b): ');
    readln(a, b);
    for i:= b - 1 downto a + 1 do
        begin
            write(i, ' ');
            n:= n + 1;
        end;
    writeln();
    write('Колличество цифр: ', n)
end.

