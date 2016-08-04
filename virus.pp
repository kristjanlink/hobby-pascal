program virus;
uses crt;
var i, j, k: integer;
BEGIN
cursoroff;
randomize();
  FOR i := 1 TO 65 DO
  BEGIN
    textbackground(0);
    writeln('Installing virus - Please wait...');
    writeln();
    write('       ');
    FOR j := 1 TO 64 DO
    BEGIN
      IF j < i THEN
        textbackground(2) //Green
      ELSE
        textbackground(4); //Red
      write(' ');
    END;
    textbackground(0);
    writeln();
    FOR k := 1 TO 37 DO
      write(' ');
    writeln((i * 100 DIV 64 - 1):3, '%');
    delay(random(501));
    clrscr
  END;
  textbackground(0);
  FOR i := 10 DOWNTO 0 DO
  BEGIN
    writeln('Virus installed successfully! Wiping system drive in ', i, 's...');
    delay(1000);
    clrscr;
  END;
  clrscr;
  writeln('Formatting system drive now!');
  writeln();
  REPEAT
    textbackground(random(7) + 1);
    write(' ');
    delay(10);
  UNTIL FALSE;
  readln();
END.
