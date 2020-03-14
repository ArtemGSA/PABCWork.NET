Program Hanoi;
var n, x, y: integer;


Procedure Hanoi_rec(n, x, y: integer);
begin;
  if n>=2 then
  begin;
    Hanoi_rec(n-1, x, 6-x-y);
    writeln(x, ' -> ', y);
    Hanoi_rec(n-1, 6-x-y, y);
  end
  else
    writeln(x, ' -> ', y)
end;


begin;
readln(n, x, y);
Hanoi_rec(n, x, y)
end.