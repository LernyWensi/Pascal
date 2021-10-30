program p1_22;
var
    sentence, result: string; 
    i: integer;
begin
    result := '';
    
    write('sentence = ');
    read(sentence);
    
    for i := 1 to length(sentence) do
        begin
            if sentence[i] = ':' then
                begin
                    write('result = ', result + sentence[i]);
                    break;
                end
            else 
                result := result + sentence[i];
        end;
end.

