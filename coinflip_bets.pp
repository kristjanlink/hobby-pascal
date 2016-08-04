program coinflip_bets;
uses crt;
var cash, bet: int64;
var flip: integer;
var guess: char;
begin
  randomize;
  writeln('Enter amount of starting money:');
  readln(cash); // turn m into 000000 and b into 000000000 and t into 12x0
  clrscr;
  repeat
    writeln(cash:60, '$');
    writeln('Enter bet amount (bet 0 to quit):');
    readln(bet);
    if bet = 0 then
      break;
    if bet > cash then
      bet := cash;
    writeln('heads or tails (h/t)?');
    guess := readkey;
    flip := random(2);
    if ((guess = 'h') and (flip = 1)) or ((guess = 't') and (flip = 0))then begin
      cash := cash + bet;
      writeln;
      writeln;
      writeln;
      writeln('You won! :D':20)
    end else begin
      cash := cash - bet;
      writeln;
      writeln;
      writeln;
      writeln('You lost! :(':20);
    end;
    delay(1000);
  clrscr;
  until false;
end.
