Program A935;
var l, n, i: integer;
begin;
  read(n);
  l:=1;
  i:=0;
  while l<n do
  begin
    if (n mod l) = 0 then
      i:=i+1;
    l+=1
  end;
  write(i);
end.