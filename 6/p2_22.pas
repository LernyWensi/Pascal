program p2_22;
var
    initial: array of integer;
    i, length, randomRangeStart, randomRangeEnd, max: integer;
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
  
  max := randomRangeStart;
  
  for i := 1 to length do
   begin
    initial[i] := random(randomRangeEnd - randomRangeStart + 1) + randomRangeStart;
    writeln('initial[', i, '] = ', initial[i]);
    
    if initial[i] > max then
        max := initial[i];
   end;
   
  initial[length] := max;
  
  writeln();
  write('After initial[', length, '] = ', initial[length]);
end.

