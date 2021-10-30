program p22;
var
    n: integer;
    
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
        
    function isPossible(n: integer):boolean;
        var
            i, a, b: integer;
            result: boolean;
        begin
            isPossible := false;
            for i := 1 to n do
                for a := i + 1 to i + 1 do
                    for b := a + 1 to a + 1 do
                        if i * a * b = n then
                            begin
                                result := true;
                                writeln(i, ' ', a, ' ', b, ' ');
                            end;
            isPossible := result;
        end;
begin
  shortInfo('p22');
  read(n);
  writeln('isPossible ', isPossible(n));
end.

