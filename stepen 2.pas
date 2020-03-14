Program power_of_int;
var n, base, power:integer;


Function get_power_forward_int (n, base, power: integer): integer;
begin;
  if n = 1 then 
    get_power_forward_int := power
  else
    if n mod base = 0 then
      get_power_forward_int:=get_power_forward_int(n div base, base, power+1)
    else
      get_power_forward_int := -1;
end;


begin;
  power:=0;
  readln(n, base);
  writeln(get_power_forward_int(n, base, power))
end.