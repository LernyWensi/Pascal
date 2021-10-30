program p1_4;
var
    f, g: text;
    textF, textG: string;
    i: integer;
begin
    writeln();
    
    assign(f, 'f.txt');
    reset(f);
    
    assign(g, 'g.txt');
    rewrite(g);
    
    read(f, textF);
    writeln('text f: ', textF);
    
    for i := length(textF) downto 1 do
        write(g, textF[i]);
        
    writeln();
    
    close(f);
    close(g);
    
    assign(g, 'g.txt');
    reset(g);
    
    read(g, textG);
    write('text g: ', textG);
    
    close(g);
end.