program p1_12;
var
    formatted, notFormatted: text;
    formattedText, notFormattedText: string;
    i: integer;
begin
    writeln();
    
    assign(notFormatted, 'notFormatted.txt');
    reset(notFormatted);
    
    assign(formatted, 'formatted.txt');
    rewrite(formatted);
    
    read(notFormatted, notFormattedText);
    writeln('With extra spaces: ', notFormattedText);
    
    for i := 1 to length(notFormattedText) do
        begin
            if notFormattedText[i] <> ' ' then
                write(formatted, notFormattedText[i])
            else if notFormattedText[i + 1] <> ' ' then
                write(formatted, notFormattedText[i]); 
        end;
        
    writeln();
    
    close(notFormatted);
    close(formatted);
    
    assign(formatted, 'formatted.txt');
    reset(formatted);
    
    writeln();
    
    read(formatted, formattedText);
    write('Without extra spaces: ', formattedText);
    
    close(formatted);
end.