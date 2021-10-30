unit p3Lib;

interface
  function arithmeticalMean(a, b: integer): real;  
  function geometricMean(a, b: integer): real;
  
implementation
  function arithmeticalMean(a, b: integer): real;
    var 
      tmp: real;
    begin
      tmp := (a + b) / 2;
      geometricMean := tmp;
    end;
  
  function geometricMean(a, b: integer): real;
    var 
      tmp: real;
    begin
      tmp := sqrt(a * b);
      geometricMean := tmp;
    end;
end.