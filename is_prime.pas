Program is_prime;
var n: integer;


Function prime(n: integer): boolean;
var i:integer;
begin;
  prime:=true;
  for i:=2 to trunc(sqrt(n)) do
  begin
    if n mod i=0 then
    begin
      prime:=false;
      break
    end;
  end;
end;


begin;
  readln(n);
  writeln(prime(n))
end.
