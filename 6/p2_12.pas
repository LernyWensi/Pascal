program p2_12;
var
    initial: array of integer;
    i, length, randomRangeStart, randomRangeEnd, sum: integer;
begin
  randomize();
  
  write('length of array = ');
  read(length);
  
  writeln('range of random: ');
  write('  from: ');
  readln(randomRangeStart);
  write('  to: ');
  readln(randomRangeEnd);
  
  setlength(initial, length);
  
  sum := 0;
  
  for i := 1 to length do
   begin
    initial[i] := random(randomRangeEnd - randomRangeStart + 1) + randomRangeStart;
    writeln('initial[', i, '] = ', initial[i]);
    
    if i mod 2 = 0 then
        sum := sum + initial[i];
   end;
  
  write('sum = ', sum);
end.

