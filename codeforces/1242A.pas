Program A1242;
var n: int64;



Procedure get_colors(n:int64);
var i, j, d: int64;
begin;
  i:=2;
  d:=1;
  while trunc(sqrt(n))>= i do
  begin
    if d>1 then
    begin
      n:=1;
      break
    end;
    while (n mod i = 0) and (trunc(sqrt(n)) >= i) do
    begin;
      d:=i;
      n:=n div i;
    end;
    i+=1
  end;
  if (d<>n) and (d>1) then
    n:=1;
  writeln(n)
end;



begin;
  readln(n);
  get_colors(n)
end.