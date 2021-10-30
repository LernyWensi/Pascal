program p1_12;
var
    sentence, word: string; 
    i, counter: integer;
begin
    counter := 0;
    word := '';
    
    write('sentence = ');
    read(sentence);
    
    for i := 1 to length(sentence) do
        begin
            if sentence[i] = ' ' then
                begin
                    if (counter = 3) then
                        writeln('=> ',word);
                    word := '';
                    counter := 0;
                end
            else 
                begin
                    word := word + sentence[i];
                    counter := counter + 1;
                end;
        end;
end.

