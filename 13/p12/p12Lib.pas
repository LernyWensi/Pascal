unit p12Lib;

interface
  function divide(a: integer): string;  
  function multi(a: string): integer;
  
implementation
  function divide(a: integer): boolean;
    var 
      tmp: boolean;
    begin
      if a mod 7 = 0 then
        tmp := 'true'
      else
        tmp := 'false';

      divide := tmp;
    end;
  
  function multi(a: string): integer;
    var 
      sum, i: integer;
    begin
      sum := 1;
      
      for i := 1 to length(a) do
        sum := sum * strToInt(a[i]);

      multi := sum;
    end;
end.