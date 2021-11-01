program p1_12;
type
    listPointer = ^listType;
    
    listType = record
        value : integer;
        next : listPointer;
    end;
var
    initialHead, initialLast, oddHead, evenHead: listPointer;
    value, i, amountOfListItems: integer;
    
    function createNewLists(list: listPointer; return: string):listPointer;
        var
            oddHead, evenHead, oddLast, evenLast, helper: listPointer;
            counterEven, counterOdd: integer;
        begin
            new(oddHead);
            oddHead^.next := nil;
            
            new(evenHead);
            evenHead^.next := nil;

            oddLast := oddHead;
            evenLast := evenHead;
            helper := list;
            
            counterEven := 0;
            counterOdd := 0;
                
            for i := 1 to amountOfListItems do
                begin
                    if helper^.value mod 2 = 0 then
                        begin
                            if counterEven = 0 then
                                evenLast^.value := helper^.value
                            else  
                                begin
                                    new(evenLast^.next);
                                    evenLast := evenLast^.next;
                                    evenLast^.value := helper^.value;
                                    evenLast^.next := nil;
                                end;
                                
                            counterEven := 1;
                        end 
                    else
                        begin
                            if counterOdd = 0 then
                                oddHead^.value := helper^.value
                            else
                                begin
                                    new(oddLast^.next);
                                    oddLast := oddLast^.next;
                                    oddLast^.value := helper^.value;
                                    oddLast^.next := nil; 
                                end;
                                
                            counterOdd := 1;
                        end;
                        
                    helper := helper^.next;
                end;
            
            if counterEven = 0 then
                evenHead^.value := 0;
            if counterOdd = 0 then
                oddHead^.value := 0;
            
            if return = 'odd' then
                createNewLists := oddHead
            else if return = 'even' then
                createNewLists := evenHead;
        end;
        
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
begin
    writeln();
    
    write('set amount of list items: ');
    read(amountOfListItems);
    writeln();
    
    write('set value for list items: ');
    read(value);
    
    new(initialHead);
    initialHead^.next := nil;
    initialHead^.value := value;
    
    initialLast := initialHead;
    
    for i := 1 to amountOfListItems - 1 do
        begin
            read(value);
            new(initialLast^.next);
            initialLast := initialLast^.next;
            initialLast^.value := value;
            initialLast^.next := nil;;
        end;
    writeln();
    
    oddHead := createNewLists(initialHead, 'odd');
    evenHead := createNewLists(initialHead, 'even');
    
    writeList('L', initialHead);
    writeList('L1 (odd)', oddHead);
    writeList('L2 (even)', evenHead);
end.
