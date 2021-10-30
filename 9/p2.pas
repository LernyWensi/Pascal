program p2;
type
    defaultSet = set of 1..255;
var
    initialSet, primeNumbers, compositeNumbers: defaultSet;
    i, x, randomRange, amountOfElements, counter: integer;
    
    procedure renderSet(item: defaultSet);
        begin
            for i := 1 to amountOfElements do
                if i in item then
                    write(i, ' ');
            writeln();
        end;
begin
    writeln();

    write('Set the number of items in a set = ');
    read(amountOfElements);
    
    initialSet := [];
    primeNumbers := [];
    compositeNumbers := [];
    
    counter := 0;
    
    writeln();
    
    write('initial set: ');
    for i := 1 to amountOfElements do
        begin
            initialSet := initialSet + [i];
            write(i, ' ');
        end;
        
    writeln();
    writeln();
        
    for i := 1 to amountOfElements do
        if i in initialSet then   
            if i < 2 then
                compositeNumbers := compositeNumbers + [i]  
            else if i = 2 then
                primeNumbers := primeNumbers + [i]
            else 
                begin
                    for x := 1 to i do
                        if i mod x = 0 then
                            counter := counter + 1;
                            
                    if counter > 2 then
                        compositeNumbers := compositeNumbers + [i]
                    else
                        primeNumbers := primeNumbers + [i];
                        
                    counter := 0;
                end;
                
    write('composite numbers: ');
    renderSet(compositeNumbers);
            
    write('prime numbers: ');
    renderSet(primeNumbers);
end.