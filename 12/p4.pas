uses graphABC;

begin
    setwindowwidth(770);
    setwindowheight(150);
    setpenwidth(2);
    rectangle(10,10,760,140);

    // А
    setpenstyle(psDashDot);
    setpencolor(clBlack);
    moveto(20,130);
    lineto(65,20);
    lineto(110,130);
    moveto(40,80);
    lineto(90,80);

    // Р
    setpenstyle(psDash);
    setpencolor(clDarkGray);
    arc(140,55,35,90,-90);
    moveto(140,20);
    lineto(140,130);

    // C
    setpenstyle(psDashDotDot);
    setpencolor(clLightGray);
    arc(260,75,53,90,270);

    // E
    setpenstyle(psDashDotDot);
    setpencolor(clBrown);
    moveto(310,20);
    lineto(380,20);
    moveto(310,20);
    lineto(310,130);
    lineto(380,130);
    moveto(310,80);
    lineto(380,80);

    // Н
    setpenstyle(psDashDot);
    setpencolor(clRed);
    moveto(430,20);
    lineto(430,130);
    moveto(430,80);
    lineto(500,80);
    moveto(500,20);
    lineto(500,130);

    // И
    setpenstyle(psSolid);
    setpencolor(clCyan);
    moveto(550,20);
    lineto(550,130);
    moveto(620,20);
    lineto(620,130);
    moveto(550,130);
    lineto(620,20);

    // Й
    setpenstyle(psDot);
    setpencolor(clLightBlue);
    moveto(670,30);
    lineto(670,130);
    moveto(740,30);
    lineto(740,130);
    moveto(670,130);
    lineto(740,30);
    arc(705,10,20,315,225);
end.