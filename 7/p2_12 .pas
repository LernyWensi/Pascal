program p2_12;
var
    sentence: string; 
    i, counter, max: integer;
begin
    counter := 0;
    max := 0;
    
    write('sentence = ');
    read(sentence);
    
    for i := 1 to length(sentence) do
        begin
            if sentence[i] = 'a' then
                counter := counter + 1
            else 
                begin
                    if max < counter then
                        max := counter;
                    counter := 0;
                end;
        end;
        
    write('max counter = ', max);
end.

