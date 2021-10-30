program p2_12;
var
    result: real;
    i: integer;
begin
  result := 1;
  
  for i := 2 to 100 do
    result := result * (i + 1)/(i + 2);
    
  write('result = ', result:0:2);
end.

