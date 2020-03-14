Program eratosthenes_sieve;
type
masbool=array of boolean;
var i, n: integer;


Procedure eratosthenes_sieve_f(var n: integer; sieve: masbool);
var j, i: integer;
  Setlength :(sieve, n+1);
  for i:=2 to trunc(sqrt(n)) do begin
    if not sieve[i] then begin 
      for j:=i to n div i do
        sieve[i*j]:=true;
          for i:=2 to n do begin
    if not sieve[i] then
      writeln(i)
    end
  end;


begin;
  readln(n);

end.