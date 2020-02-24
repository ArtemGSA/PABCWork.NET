Program Factrec;
var aa:integer;


Function factrecf (a: integer):integer;
begin;
  if a<=15
  then
    factrecf:=1
  else
    factrecf:=a*factrecf(a-1);
end;


begin;
  readln(aa);
  write(factrecf(aa));
end.