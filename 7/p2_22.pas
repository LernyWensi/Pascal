program p2_22;
var
    sentence, word, longestWord: string; 
    i: integer;
begin
    longestWord := '';
    word := '';
    
    write('sentence = ');
    read(sentence);
    sentence := sentence + ' ';
    
    for i := 1 to length(sentence) do
        begin
            if sentence[i] <> ' ' then
                word := word + sentence[i]
            else 
                begin
                    if length(word) >= length(longestWord) then
                        longestWord := word;
                    word := '';
                end;
        end;
        
    write('longest word = ', longestWord);
end.

