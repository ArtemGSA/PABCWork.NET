Program A1223;
var i, j, q: integer;
begin;
  read(q);
  for i:=0 to q-1 do
  begin
    readln(j);
    if j<=4 then 
      writeln(4-j)
    else
      if j mod 2>0 then
        writeln(1)
      else
        writeln(0);
  end;
end.