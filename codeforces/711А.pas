Program aa;
type
  StrArr = array of string;

var n, i, j: integer;
s: StrArr;
begin;
  readln (n);
  Setlength(s, n);
  for i:=0 to n-1 do
  begin;
    readln (s[i]);
    if (s[i][1]='O') and (s[i][2]='O') then
    begin;
      s[i][1]:='+';
      s[i][2]:='+';
      j:=1
    end
    else
      if (s[i][4]='O') and (s[i][5]='O') then
      begin
        s[i][4]:='+';
        s[i][5]:='+';
        j:=1
      end;
  end;
  if j=1 then
  begin;
    writeln('YES ');
    for i:=0 to n-1 do
      writeln(s[i])
  end
  else
    write('NO')
end.