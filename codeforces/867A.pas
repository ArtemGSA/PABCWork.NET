Program A867;
var n, i, j, k: integer;
s: string;

procedure input;
begin;
  readln(n);
  read(s);
end;

procedure count;
var i: integer;
begin;
  for i:=0 to n-2 do
    if (s[i+1]='S') and (s[i+2]='F') then
      j+=1
    else
      if (s[i+1]='F') and (s[i+2]='S') then
        k+=1
end;

procedure output;
begin;
  if j>k then
    write('YES')
  else
    write('NO')
end;

begin;
  j:=0;
  k:=0;
  input;
  count;
  output;
end.