Program A791;
var a, b, z: integer;
begin;
  read(a);
  read(b);
  z:=0;
  while (a=b) or (a<b) do
  begin
    b*=2;
    a*=3;
    z+=1;
  end;
write(z);
end.