Program change;
var n, count, i: integer;
banknotes: array [0..4] of integer = (100, 20, 10, 5, 1);
begin;
  read(n);
  for i:=0 to 4 do
  begin
    count+=n div banknotes[i];
    n:=n mod banknotes[i];
  end;
  write(count);
end.