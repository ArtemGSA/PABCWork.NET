Program A677;
var n, h, i, a, j: integer;
begin;
  j:=0;
  read(n, h);
  for i:=0 to n-1 do
  begin
    read(a);
    if a>h then
      j+=1
  end;
  j+=n;
  write(j);
end.