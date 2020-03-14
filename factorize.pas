Program azx;
var n: integer;


Procedure factorize(n: integer);
var i, j: integer; 
begin;
  i:=2;
  while trunc(sqrt(n))>= i do
  begin
    while (n mod i = 0) and (trunc(sqrt(n)) >= i) do
    begin
      writeln (i);
      n:=n div i;
    end;
    i+=1;
  end;
  writeln(n);
end;


begin;
  readln(n);
  factorize(n)
end.