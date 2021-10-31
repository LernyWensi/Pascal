program p2_12;
type
    listPointer = ^listType;
    
    listType = record
        value : integer;
        next : listPointer;
    end;
var
    firstHead, secondHead, resultHead, resultLast, tmpFirstHead, tmpSecondHead: listPointer;
    value, i, amountOfListItems, counter, resultCounter, checkerCounter, x: integer;
    checker: array of integer;
    
    procedure writeList(name: string; listHead: listPointer);
        var
            helper: listPointer;
        begin
            write(name, ' list items: ');
            helper := listHead;
            
            if (helper^.value = 0) and (helper^.next = nil) then
                write('nothing')
            else
                while helper <> nil do
                    begin
                        write(helper^.value, ' ');
                        helper := helper^.next;
                    end;
            writeln();
        end;
        
    procedure createList(head: listPointer; amountOfListItems: integer);
        var
            headLast: listPointer;
            tmpValue: integer;
        begin
            headLast := head;
            
            for i := 1 to amountOfListItems - 1 do
                begin
                    read(tmpValue);
                    new(headLast^.next);
                    headLast := headLast^.next;
                    headLast^.value := tmpValue;
                    headLast^.next := nil;;
                end;
        end;
        
begin
    writeln();
    
    // Creating the L1
    write('set amount of L1 list items: ');
    read(amountOfListItems);
    
    setlength(checker, amountOfListItems);
    
    write('set value for L1 list items: ');
    read(value);
    
    new(firstHead);
    firstHead^.next := nil;
    firstHead^.value := value;
    
    createList(firstHead, amountOfListItems);

    writeln();
    
    // Creating the L2
    write('set amount of L2 list items: ');
    read(amountOfListItems);

    write('set value for L2 list items: ');
    read(value);
    
    new(secondHead);
    secondHead^.next := nil;
    secondHead^.value := value;
    
    createList(secondHead, amountOfListItems);
    
    // Writing
    writeln();
    writeList('L1', firstHead);
    writeList('L2', secondHead);
    
    // Solution
    tmpFirstHead := firstHead;
    tmpSecondHead := secondHead;
    
    new(resultHead);
    resultHead^.next := nil;
    resultHead^.value := 0;
    
    resultLast := resultHead;

    counter := 0;
    resultCounter := 0;
    checkerCounter := 0;
    x := 0;
    
    while tmpFirstHead <> nil do
        begin
            while tmpSecondHead <> nil do
                begin
                    if tmpFirstHead^.value = tmpSecondHead^.value then
                        counter := counter + 1;
                    tmpSecondHead := tmpSecondHead^.next;  
                end;
            
            if counter = 0 then
                begin
                    for i := 0 to length(checker) - 1 do
                        if tmpFirstHead^.value = checker[i] then
                            checkerCounter := checkerCounter + 1;
                            
                    if checkerCounter = 0 then
                        begin
                            if resultCounter = 0 then
                               begin
                                    resultHead^.value := tmpFirstHead^.value;
                                    resultCounter := 1; 
                               end
                            else
                                begin
                                    new(resultLast^.next);
                                    resultLast := resultLast^.next;
                                    resultLast^.value := tmpFirstHead^.value;
                                    resultLast^.next := nil;
                                end;
                                
                            counter := 0;
                            checker[x] := resultLast^.value;
                            x := x + 1;
                        end;
                        
                        checkerCounter := 0 ;
                end;
                
            tmpFirstHead := tmpFirstHead^.next;
            tmpSecondHead := secondHead;
            counter := 0;
        end;
        
    // Writing
    writeln();
    writeList('L', resultHead);
end.