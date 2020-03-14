Program Evclid1;
var
  n, resul:integer;
begin;
  read(n);
  resul:=n;
  for n:=n-1 downto 2 do
  begin
    resul*=n;
  end;
  writeln(resul);
end.