Program A263;
var x, y: integer;
s: string;
begin;
  for y:=1 to 5 do
  begin;
    readln(s);
    for x:=1 to 5 do
      if s[2*x-1]='1' then
        break;
    if s[2*x-1]='1' then
      break;
  end;
  write(abs(3-x)+abs(3-y));
end.