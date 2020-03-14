Program A344;
var n, i, j: integer;
s, str:string;
begin;
  j:=1;
  readln (n);
  readln (s);
  for i:=2 to n do
  begin;
  str:=s;
  readln(s);
    if s<>str then
      j+=1;
  end;
  write(j);
end.