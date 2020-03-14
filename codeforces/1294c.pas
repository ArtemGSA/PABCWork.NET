Program C1294;
type
IntArr2d = array of integer;
var m: IntArr2d;
n: integer;
t, i: integer;


Procedure factorise_mas(n: integer);
var i, j, c: integer;
mas: IntArr2d;
begin;
  i:=2;
  c:=1;
  Setlength(mas, n);
  while trunc(sqrt(n))>= i do
  begin
    while (n mod i = 0) and (trunc(sqrt(n)) >= i) do
    begin
      c+=1;
      m[i]:=i;
      n := n div i;
    end;
    i += 1;
  end;
  if c >= 3 then
  begin
    writeln('YES');
    for i:=0 to n-1 do
      if m[i] > 0 then
        writeln(m[i])
  end
  else
    writeln('NO')
end;


begin;
  readln(t);
  Setlength(m, t);
  for i := 0 to t-1 do
  begin;
    readln(n);
    m[i] := n
  end;
  for i:=0 to t-1 do
  factorise_mas(m[i])
end.