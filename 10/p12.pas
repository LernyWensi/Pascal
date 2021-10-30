program p12;
type
    Assortim = record
        toyName: string;
        price: real;
        ageRestrictions: integer;
    end;
var
    toys: array of Assortim;
    maxPrice: real;
    numberOfToys, i: integer;
begin
    writeln();
    
    write('Set the number of toys: ');
    read(numberOfToys);
    setlength(toys, numberOfToys);
    
    writeln();
    
    maxPrice := 0;
      
    for i := 1 to length(toys) do
        begin
            if i = 1 then
                readln();
                
            writeln('Enter toy properties:');
            
            write('   name: ');
            readln(toys[i].toyName);
            
            
            write('   price: ');
            readln(toys[i].price);
            
            write('   ageRestrictions: ');
            readln(toys[i].ageRestrictions);
            
            writeln();
        end;
        
    writeln();
    write('a) price <= 4 | age restrictions <= 5: ');
    for i := 1 to length(toys) do
        begin
            if (toys[i].ageRestrictions <= 5) and (toys[i].price <= 4) then
                write(toys[i].toyName, ' ');
            if (lowerCase(toys[i].toyName) = 'конструктор') and (toys[i].price > maxPrice) then
                maxPrice := toys[i].price;
        end;
    
    writeln();
    write('б) max "конструктор" price: ', maxPrice:0:2);
end.