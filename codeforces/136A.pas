Program A136;
var j, i, n: integer;
m: array [1..100] of integer;
begin;
  read(n);
  for i:=1 to n do
  begin
    read(j);
    m[j]:=i;
  end;
  for i:=1 to n do
    write(m[i], ' ')
end.