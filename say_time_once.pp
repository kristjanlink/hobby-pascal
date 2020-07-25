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
  if rightStr(hours, 1) = '1' then
    sndPlaySound('t1.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '2' then
    sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '3' then
    sndPlaySound('t3.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '4' then
    sndPlaySound('t4.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '5' then
    sndPlaySound('t5.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '6' then
    sndPlaySound('t6.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '7' then
    sndPlaySound('t7.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '8' then
    sndPlaySound('t8.wav', snd_Async or snd_NoDefault);
  if rightStr(hours, 1) = '9' then
    sndPlaySound('t9.wav', snd_Async or snd_NoDefault);
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
  if rightStr(mins, 1) = '1' then
    sndPlaySound('t1.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '2' then
    sndPlaySound('t2.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '3' then
    sndPlaySound('t3.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '4' then
    sndPlaySound('t4.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '5' then
    sndPlaySound('t5.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '6' then
    sndPlaySound('t6.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '7' then
    sndPlaySound('t7.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '8' then
    sndPlaySound('t8.wav', snd_Async or snd_NoDefault);
  if rightStr(mins, 1) = '9' then
    sndPlaySound('t9.wav', snd_Async or snd_NoDefault);
  if mins = '10' then
    sndPlaySound('t10.wav', snd_Async or snd_NoDefault);
  if strToInt(mins) in [11..19] then begin
    delay(625);
    sndPlaySound('teen.wav', snd_Async or snd_NoDefault);
  end;
  delay(1000);
end.
