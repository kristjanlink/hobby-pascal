program duel;
uses crt;
var hp1, hp2, max, hit, hp, i, tick: integer;
function intperc(number, max: integer): integer;
  begin
    intperc := (number * 100) div max;
  end;
procedure hud();
  begin
    write('Your HP: ':16, hp1:2);
    write(' ');
    textbackground(2);
    for i := 0 to 50 do begin
      if (intperc(i, 50) > intperc(hp1, 99)) or (hp1 = 0) then
        textbackground(4);
        write(' ');
    end;
    textbackground(0);
    writeln;
    writeln;
    write('Opponent''s HP: ':16, hp2:2);
    write(' ');
    textbackground(2);
    for i := 0 to 50 do begin
      if (intperc(i, 50) > intperc(hp2, 99)) or (hp2 = 0) then
        textbackground(4);
        write(' ');
    end;
    textbackground(0);
    writeln;
    writeln;
    writeln;
    writeln(hit:43);
  end;
function attack(hp: integer): integer;
  begin
    if random(4) <> 0 then
      hit := (random(max) + 1)
    else
      hit := 0;
    attack := hp - hit;
    if attack < 0 then begin
      attack := 0;
      hit := hp;
    end;
    if tick <> 0 then
      delay(tick)
    else
      readln;
  end;
begin
  cursoroff;
  hp1 := 99;
  hp2 := 99;
  write('Choose maximum hit: ');
  readln(max);
  clrscr;
  writeln('Enter amount of ticks between each attack (each tick is 0.6s).');
  write('Entering 0 means manual attacking with the "Enter" key: ');
  readln(tick);
  tick := tick * 600;
  clrscr;
  randomize;
  repeat
    hud();
    if hp1 = 0 then
      break;
    hp2 := attack(hp2);
    clrscr;
    hud();
    if hp2 = 0 then
      break;
    hp1 := attack(hp1);
    clrscr;
  until false;
if hp1 = 0 then
  writeln('You lose, noob!')
else
  writeln('Gratz, you own!');
readln;
end.
