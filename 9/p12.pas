program p12;
var
    sentence: string;
    helper, letters: set of 'A'..'Z';
    i: integer;
begin
    helper := ['A'..'Z'];
    letters := [];
    
    write('Enter sentence: ');
    read(sentence);
    
    writeln();
    
    for i := 1 to length(sentence) do
        if sentence[i] in helper then
            begin
                write(sentence[i], ' ');
                letters := letters + [sentence[i]];
            end;
    
end.