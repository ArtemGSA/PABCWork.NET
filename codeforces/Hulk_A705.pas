Program A705;
var s: string;
n: integer;

function get_hulk_feelings(n: integer): string;
var s: string;
i: integer;
begin
  
  for i:=0 to n-1 do
  begin
    if i mod 2>0
      s+='I love'
    else
      s+='I hate'
    if i<n-1
  end
  s+=' it'
end;

begin
  readln(n);
end.