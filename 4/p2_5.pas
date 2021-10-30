program p2_5;
var
    i, counter, tmp: integer;
    number: string;
begin
  read(number);
  
    for i := 1 to length(number) do
        begin
            val(number[i], tmp);
            if tmp mod 2 = 0 then
                counter := counter + 1;
        end;
            
  write('counter = ', counter);
end.