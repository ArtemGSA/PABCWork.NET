Program C1294;


Procedure factorise_mas()
var n, i, j, c: integer;
begin;
  i:=2;
  c:=1;
  while trunc(sqrt(n))>= i do
  begin
    while (n mod i = 0) and (trunc(sqrt(n)) >= i) do
    begin
      c+=1;
      n:=n div i;
    end;
    i+=1;
  end;
  if c>+=3 then
  begin
    wrtiteln('YES');
    writeln()
  end
end.