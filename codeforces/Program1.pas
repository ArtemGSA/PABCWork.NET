Program O;
var a, b: integer;
begin;
  read (a, b);
  If a>b then
    write (b, ' ', (a-b) div 2)
  else
    write (a, ' ', (b-a) div 2); 
end.