program p12;

uses p12Lib;

var 
    a:integer;
    s:string;

begin
    writeln();

    write('is it a multiple of 7, number = ');
    readln(a);

    write('the product of the digits of a number, number = ');
    readln(s);

    writeln();
    writeln('it is ', devide(a)); 

    writeln();
    writeln('product = ',multi(s));
end.