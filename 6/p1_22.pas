program p1_22;
var
    initial: array of integer;
    i, length, randomRangeStart, randomRangeEnd, max, min: integer;
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
  
  max := 0;
  min := randomRangeEnd;
  
  for i := 1 to length do
   begin
    initial[i] := random(randomRangeEnd - randomRangeStart + 1) + randomRangeStart;
    
    writeln('initial[', i, '] = ', initial[i]);
    
    if i mod 2 = 0 then
        if max < initial[i] then
            max := initial[i];
    if i mod 2 <> 0 then
        if min > initial[i] then
            min := initial[i];
   end;
   
  writeln('(even index) max = ', max);
  write('(odd index) min = ', min);
end.

