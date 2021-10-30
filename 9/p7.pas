program p7;
var
    sentence, lowerCaseSentence: string;
    helper: set of 'A'..'z';
    i: integer;
begin
    helper := [];
    
    write('Enter sentence: ');
    read(sentence);
    lowerCaseSentence := LowerCase(sentence);
    
    writeln();
    write('сase sensitive: ');
    
    for i := 1 to length(sentence) do
        if not(sentence[i] in helper) then
            begin
                write(sentence[i], ' ');
                helper := helper + [sentence[i]];
            end;
            
    helper := [];

    writeln();
    write('сase insensitive: ');
    
    for i := 1 to length(lowerCaseSentence) do
        if not(lowerCaseSentence[i] in helper) then
            begin
                write(lowerCaseSentence[i], ' ');
                helper := helper + [lowerCaseSentence[i]];
            end;
    
end.