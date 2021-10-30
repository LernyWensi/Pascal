program p17;
var
    M: string;
    
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
        
    function countTheNumbers(M: string):integer;
        var
            i, counter, tmp: integer;
        begin
            counter := 0;
            for i := 1 to length(M) do
               begin
                val(M[i], tmp);
                if tmp mod 2 <> 0 then
                    counter := counter + 1;
               end;
            countTheNumbers := counter;
        end;
begin
  shortInfo('p17');
  read(M);
  writeln(countTheNumbers(M));
end.

