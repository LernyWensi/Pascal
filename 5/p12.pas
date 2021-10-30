program p12;
var
    a, n: real;
    
    procedure shortInfo(text: string);
        begin
            writeln('********* ***************** ************* ****');
            writeln('');
            writeln('*                  Программа                 *');
            writeln('');
            writeln('*                      ',text,'                   *');
            writeln('');
            writeln('*           Похилько Арсений Андреевич       *');
            writeln('');
            writeln('********* ***************** ************* ****');
        end;
        
    function expFunc(a, n: real):real;
        begin
            expFunc := exp(ln(a) * n);
        end;
begin
  shortInfo('p12');
  read(a, n);
  writeln(expFunc(a,n):0:2);
end.
