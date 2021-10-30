program p1_22;
var
    i, n, sum, multi: integer;
begin
  read(n);
  multi := 1;
  sum := 0;
  for i := 1 to n do 
    begin
        if i mod 3 = 0 then
            sum := sum + i;
        if i mod 2 = 0 then
            multi := multi * i
    end;
    write('/3: ', sum, '     ', '/2: ', multi);
end.

