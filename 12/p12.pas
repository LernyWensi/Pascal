program p12;

uses graphABC;

var
    x, y, i, j, randomStyle: integer;

    procedure parallelogram(x, y, randomStyle: integer);
    var 
        c: color;
    begin
        c := clrandom();
        setpencolor(c);

        case randomStyle of
            1 : setpenstyle(psSolid);
            2 : setpenstyle(psClear);
            3 : setpenstyle(psDash);
            4 : setpenstyle(psDot);
            5 : setpenstyle(psDashDot);
            6 : setpenstyle(psDashDotDot);
        end;

        moveto(x, y);
        lineto(x + 20,y - 50);
        lineto(x + 120,y - 50);
        lineto(x + 100, y);
        lineto(x, y);
        floodfill(x + 5, y - 3, c);
    end;

begin
    randomStyle := 1;
    y := 70;
    for i := 1 to 3 do
        begin
            x := 30;
            for j := 1 to 4 do
                begin
                    parallelogram(x, y, randomStyle);
                    x := x + 140;
                end;
            y := y + 100;
            randomStyle := randomStyle + 1;
        end;
end.