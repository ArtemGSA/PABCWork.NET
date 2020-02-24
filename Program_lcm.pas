Program lcm;
uses libraryArtem;
var a, b: integer;


Function lcmf(a, b: integer):integer; 
var
  x: integer;
begin
  x:=a*b div gcdF(a, b);
  lcmf:=x;
end;

begin;
read(a, b);
writeln (lcmf(a, b));
end.