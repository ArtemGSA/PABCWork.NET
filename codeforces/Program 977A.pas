Program A977;
var n, k, z: integer;
begin;
  read(n);
  read(k);
  for z:=0 to k-1 do
  begin
    if (n mod 10) = 0 
      then
      n:= n div 10
    else
      n-=1
    end;
write(n);
end.