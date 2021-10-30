program p4;
type
    passenger = record
        amountOfItems: integer;
    end;
var
    passengers: array of passenger;
    averageItems: real;
    moreThanTwo, moreThanAverage, numberOfPassengers, i, tmpSum, randomRange: integer;
begin
    randomize();
    
    moreThanAverage := 0;
    moreThanTwo := 0;
    
    writeln();
    
    write('Set the number of passengers: ');
    read(numberOfPassengers);
    setlength(passengers, numberOfPassengers);
    
    write('Set the range of random: ');
    read(randomRange);
    
    writeln();
      
    for i := 1 to length(passengers) do
        begin
            passengers[i].amountOfItems := random(randomRange);
            if passengers[i].amountOfItems > 2 then
                moreThanTwo := moreThanTwo + 1;
            tmpSum := tmpSum + passengers[i].amountOfItems;
        end;
    
    for i := 1 to length(passengers) do
        if passengers[i].amountOfItems > (tmpSum / length(passengers)) then
            moreThanAverage := moreThanAverage + 1;
    
    for i := 1 to length(passengers) do
        writeln('passenger[',i,'].amountOfItems = ', passengers[i].amountOfItems);
       
    writeln(); 
    write('average = ', tmpSum / length(passengers):0:2);
    writeln();
    writeln();
    
    writeln('more than average = ', moreThanAverage);
    write('more than two = ', moreThanTwo);
end.