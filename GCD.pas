Program a1;
var
  a, b: integer;


Function gcdF (x, y: integer): integer;
var z: integer;
begin
  if y>x then 
  begin
    z := x;
    x := y;
    y := z; 
  end;
  while y<>0 do
  begin
    z:=y;
    y:=x mod y;
    x:=z;
  end;
  gcdF:=x;
end;


begin;
readln(a, b);
writeln(gcdF(a, b))
end.
