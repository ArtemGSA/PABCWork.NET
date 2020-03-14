Program a758;
var n, i, t, s: integer;
a: array of integer;
begin;
  t:=0;
  s:=0;
  read(n);
  for i:=1 to n-1 do
  begin;
    read(a[i]);
    if t<a[i] then
      t:=a[i];
  end;
  i:=0;
  while i<n do
  begin
    s+=t-a[i];
    i+=2;
  end;
  write(s);
end.