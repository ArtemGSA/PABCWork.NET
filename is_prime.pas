Program is_prime;
var i, n: integer;
prime: boolean;
begin;
  readln(n);
  prime:=true;
  for i:=2 to trunc(sqrt(n)) do
  begin
    if n mod i=0 then
    begin
      prime:=false;
      break
    end;
  end;
  writeln(prime)
end.
