Program A1;
begin
  var n, i, v, s: integer;
  read(n);
  for i:=0 to n-1 do 
  begin 
    read(v);
    s+=v
  end;
  if s>0 then
    write('HARD')
  else
    write('EASY')
end.