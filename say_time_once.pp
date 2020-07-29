program say_time_once;
uses crt, mmsystem, sysutils;
var
  mins, hours: string;

begin
  hours := formatDateTime('hh', time);
  mins := formatDateTime('nn', time);

  // A beautiful jingle plays
  sndPlaySound('time_is.wav', snd_Async or snd_NoDefault);
  delay(4000);

  // This bit is really not necessary
{  if hours < '10' then begin
    sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;
}
  if hours > '19' then begin
    sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
    delay(625);
    sndPlaySound('ty.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;

  if hours = '00' then
    sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
  if strToInt(rightStr(hours, 1)) in [1..9] then
    sndPlaySound(pChar('t' + rightStr(hours, 1) + '.wav'),
    snd_Async or snd_NoDefault);
  if hours = '10' then
    sndPlaySound('t10.wav', snd_Async or snd_NoDefault);
  if strToInt(hours) in [11..19] then begin
    delay(625);
    sndPlaySound('teen.wav', snd_Async or snd_NoDefault);
  end;

  delay(625); // The delay between saying hours and minutes

  if mins < '10' then begin
    sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;
  if strToInt(mins) in [20..29] then begin
    sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;
  if strToInt(mins) in [30..39] then begin
    sndPlaySound('t3.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;
  if strToInt(mins) in [40..49] then begin
    sndPlaySound('t4.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;
  if strToInt(mins) in [50..59] then begin
    sndPlaySound('t5.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;
  if mins > '19' then begin
    sndPlaySound('ty.wav', snd_Async or snd_NoDefault);
    delay(625);
  end;

  if mins = '00' then
    sndPlaySound('t0.wav', snd_Async or snd_NoDefault);
  if strToInt(rightStr(mins, 1)) in [1..9] then
    sndPlaySound(pChar('t' + rightStr(mins, 1) + '.wav'),
    snd_Async or snd_NoDefault);
  if hours = '10' then
    sndPlaySound('t10.wav', snd_Async or snd_NoDefault);
  if strToInt(mins) in [11..19] then begin
    delay(625);
    sndPlaySound('teen.wav', snd_Async or snd_NoDefault);
  end;
  delay(1000);
end.
