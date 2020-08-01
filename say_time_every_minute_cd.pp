program say_time_every_minute_cd;

uses
  crt,
  mmsystem,
  sysutils;

var
  mins,
  hours: string;
  dlay: integer;

procedure say0to19(number: string);
  begin
    if number = '00' then
      sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
    if strToInt(rightStr(number, 1)) in [1..9] then
      sndPlaySound(pChar('t' + rightStr(number, 1) + '.wav'),
      snd_Async or snd_NoDefault);
    if number = '10' then
      sndPlaySound('t10.wav', snd_Async or snd_NoDefault);
    if strToInt(number) in [11..19] then
      begin
        delay(dlay);
        sndPlaySound('teen.wav', snd_Async or snd_NoDefault);
      end;
  end;

begin
  writeln('Enter delay in milliseconds to use between numbers');
  readln(dlay);
  clrscr;
  while true do
    begin
      writeln('The current time is: ', formatDateTime('hh:nn', time));

      hours := formatDateTime('hh', time);
      mins := formatDateTime('nn', time);

      // A beautiful jingle plays
      sndPlaySound('time_is.wav', snd_Async or snd_NoDefault);
      delay(4000);

      // This bit is really not necessary
{
      if hours < '10' then
        begin
          sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;
}

      if hours > '19' then
        begin
          sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
          delay(dlay);
          sndPlaySound('ty.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;

      say0to19(hours);

      delay(dlay); // The delay between saying hours and minutes

      if mins < '10' then
        begin
          sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;
      if strToInt(mins) in [20..29] then
        begin
          sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;
      if strToInt(mins) in [30..39] then
        begin
          sndPlaySound('t3.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;
      if strToInt(mins) in [40..49] then
        begin
          sndPlaySound('t4.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;
      if strToInt(mins) in [50..59] then
        begin
          sndPlaySound('t5.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;
      if mins > '19' then
        begin
          sndPlaySound('ty.wav', snd_Async or snd_NoDefault);
          delay(dlay);
        end;

      say0to19(mins);

      repeat
        gotoXY(24, 1); // Go to colon char between hours and minutes
        write(' '); // Overwrite colon char between hours and minutes

        // Countdown before full minute block
        if formatDateTime('ss', time) = '55' then
          sndPlaySound('t5.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '56' then
          sndPlaySound('t4.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '57' then
          sndPlaySound('t3.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '58' then
          sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '59' then
          sndPlaySound('t1.wav', snd_Async or snd_NoDefault);

        delay(1000);
        gotoXY(24, 1); // Go to space char between hours and minutes
        write(':'); // Overwrite space char between hours and minutes

        // Countdown before full minute block again because of the delay
        if formatDateTime('ss', time) = '55' then
          sndPlaySound('t5.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '56' then
          sndPlaySound('t4.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '57' then
          sndPlaySound('t3.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '58' then
          sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
        if formatDateTime('ss', time) = '59' then
          sndPlaySound('t1.wav', snd_Async or snd_NoDefault);
        delay(1000);
      until formatDateTime('nn', time) <> mins;
      clrscr;
  end;
end.
