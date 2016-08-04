program piano;
uses crt, windows;
var key: char;
var noteduration: integer;
begin
noteduration := 250;
repeat
  writeln('Piano by WarriorX90, press ''F10'' to quit...');
  writeln();
  writeln('"Do", "re", "mi"... is "a", "s", "d"... C sharp/D flat is "w" etc.');
  writeln();
  writeln('Press "q" for settings');
  writeln();
  writeln('AND MAKE SURE CAPSLOCK IS NOT TURNED ON OMG');
  key := readkey;
  if key = 'a' then
    windows.beep(523, noteduration);
  if key = 'w' then
    windows.beep(554, noteduration);
  if key = 's' then
    windows.beep(587, noteduration);
  if key = 'e' then
    windows.beep(622, noteduration);
  if key = 'd' then
    windows.beep(659, noteduration);
  if key = 'f' then
    windows.beep(698, noteduration);
  if key = 't' then
    windows.beep(740, noteduration);
  if key = 'g' then
    windows.beep(784, noteduration);
  if key = 'y' then
    windows.beep(831, noteduration);
  if key = 'h' then
    windows.beep(880, noteduration);
  if key = 'u' then
    windows.beep(932, noteduration);
  if key = 'j' then
    windows.beep(988, noteduration);
  if key = 'k' then
    windows.beep(1046, noteduration);
  clrscr;
  if key = 'q' then begin
    clrscr;
    writeln('Write new note duration in milliseconds (default is 250)');
    readln(noteduration);
  end;
until key = 'D';
end.
