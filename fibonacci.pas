Program fibonacci;
var nn, yy: integer;




Function fibonaccirec(n: integer ):integer;
var
  i, x, z: integer;
begin;
  if n<3 then
    fibonaccirec:=1
  else
  begin
    fibonaccirec :=fibonaccirec(n-1)+fibonaccirec(n-2);
  end
end;

begin;
  readln(nn);
  nn:=fibonaccirec(nn);
  write(nn);
end.