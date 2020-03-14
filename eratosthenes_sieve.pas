Program eratosthenes_sieve;
var i, n, j: integer;
sieve:array of boolean;
m: array of integer;
begin;
  readln(n);
  setlength(sieve, n+1);
  setlength(m, trunc(sqrt(n)));
  for i:=2 to trunc(sqrt(n)) do begin
    if not sieve[i] then begin 
      for j:=i to n div i do
        sieve[i*j]:=true;
    end
  end;
  for i:=2 to n do begin
    if not sieve[i] then
      for j:=0 to trunc(sqrt(n)) do
      m[j]:=i;
  end;
  for j:=0 to trunc(sqrt(n)) do
  writeln(m[j]);
end.