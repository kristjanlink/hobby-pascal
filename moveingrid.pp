program moveingrid;
uses crt;
var row, col: integer;
var position: array[0..7, 0..7] of char;
var lastrow, lastcol: integer;
var key: char;
begin
  lastrow := 4;
  lastcol := 4;

  for row := 0 to 7 do
      for col := 0 to 7 do begin
        if (row = lastrow) and (col = lastcol) then
          position[lastrow, lastcol] := 'O'
        else
          position[row, col] := '_';
      end;

  repeat
    writeln('Press F10 to terminate the application.');
    writeln;

    for row := 0 to 7 do begin
      for col := 0 to 7 do
        write(position[row, col], ' ');
        writeln;
    end;

    position[lastrow, lastcol] := '_';
    key := readkey;
    if key = 'H' then // Up
      if lastrow <> 0 then
        lastrow := lastrow - 1;
    if key = 'P' then // Down
      if lastrow < 7 then
        lastrow := lastrow + 1;
    if key = 'K' then // Left
      if lastcol <> 0 then
        lastcol := lastcol - 1;
    if key = 'M' then // Right
      if lastcol < 7 then
        lastcol := lastcol + 1;
    position[lastrow, lastcol] := 'O';
    clrscr;
  until key = 'D';
end.
