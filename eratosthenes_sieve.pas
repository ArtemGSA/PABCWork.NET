Program eratosthenes_sieve;
var i, n, j: integer;
sieve:array of boolean;
begin;
  readln(n);
  setlength(sieve, n+1);
  for i:=2 to trunc(sqrt(n)) do begin
    if not sieve[i] then begin 
      for j:=i to n div i do
        sieve[i*j]:=true;
    end
  end;
  for i:=2 to n do begin
    if not sieve[i] then
      writeln(i)
  end
end.