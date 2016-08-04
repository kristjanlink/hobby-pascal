program inwards_spiral;
uses sysutils, crt;
var i, j, round: integer;
var input, sideIter, masterIter, maxPadLen, sideId: integer;
var isInit: boolean;
var matrix: array of array of integer;

function spiral(sideLen: integer):integer;
  BEGIN
    IF isInit = FALSE THEN
      BEGIN
        writeln('Enter side length of spiral matrix: ');
        readln(sideLen);
        clrscr;
        FOR i := 0 TO input - 1 DO
        BEGIN
          FOR j := 0 TO input - 1 DO
            matrix[i, j] := 0;
        END;
        masterIter := 0;
        round := 0;
        sideId := 0;
        sideIter := 0;
        setLength(matrix, sideLen, sideLen);
        input := sideLen;
        maxPadLen := length(intToStr(sideLen * sideLen));
        isInit := TRUE;
      END;
    FOR i := 0 TO sideLen - 1 DO
    BEGIN
      masterIter := masterIter + 1;
      CASE sideId OF // 0 - Top, 1 - Right, 2 - Bottom, 3 - Left
        0:
        BEGIN
          matrix[round, i + round] := masterIter;
        END;
        1:
        BEGIN
          matrix[i + 1 + round, input - 1 - round] := masterIter;
        END;
        2:
        BEGIN
          matrix[input - 1 - round, input - i - 2 - round] := masterIter;
        END;
        3:
        BEGIN
          matrix[input - i - 2 - round, round] := masterIter;
        END;
      END;
    END;
    sideId := sideId + 1;
    IF sideId = 4 THEN
      BEGIN
        round := round + 1;
        sideId := 0;
      END;
    sideIter := sideIter + 1;
    IF (sideLen = input) OR (sideIter = 2) THEN
      BEGIN
        sideLen := sideLen - 1;
        sideIter := 0;
      END;
    IF sideLen <> 0 THEN
      spiral(sideLen)
    ELSE
      BEGIN
        FOR i := 0 TO input - 1 DO
        BEGIN
          FOR j := 0 TO input - 1 DO
            write(matrix[i, j]:maxPadLen, ' ');
          writeln;
          writeln;
        END;
        readln();
        isInit := FALSE;
        clrscr;
      END;
  END;


BEGIN
  REPEAT
    spiral(0);
  UNTIL FALSE
END.
