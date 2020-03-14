Program A1220;
var s: string;
i, j, countn, countz, n: integer;
begin;
  readln(n);
  countn:=0;
  countz:=0;
  read (s);
  for i:=1 to n do
  begin
    if s[i] = 'n' then 
      countn+=1
    else
      if s[i] = 'z' then
        countz+=1
  end;
  for i:=0 to countn-1 do
    write(1, ' ');
  for i:=0 to countz-1 do
    write(0, ' ');
end.
