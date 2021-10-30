program p3;

uses p3Lib;

var 
  a, b, z, x: integer;
  
begin
  write('Enter 2 variables for arithmetic mean: ');
  read(a, b);

  write('Enter 2 variables for the geometric mean: ');
  read(z, x);

  writeln();
  writeln('arithmetic mean: ', arithmeticalMean(a, b):0:2); 

  writeln();
  writeln('geometric mean: ', geometricMean(z, x):0:2);
end.