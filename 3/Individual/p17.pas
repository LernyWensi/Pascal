program p17;
var
    a: integer;
begin
    write('Введите целое число: ');
    read(a);
    if (a mod 2 = 0) then
        write('Введенное число четно')
    else
        write('Введенное число не четно');
end.