Program binary_search;
type masint = array of integer;
var f, n: integer;
m: masint;


Function bin_search(mas: masint; find: integer ): integer;
var n, i, j: integer;
begin;
  n := length(mas);
  i := 0;
  j := n;
  while j-i > 1 do
  begin;
    if mas[(j+i) div 2] <= find then
      i :=(j+i) div 2
    else
      j := (j+i) div 2;
  end;
  if find = mas[i] then
    bin_search := i
  else
    bin_search := -1
end;


begin;
  read(n);
  Setlength(m, n);
  for f:=0 to n-1 do
  read (m[f]);
  read(f);
  writeln(bin_search(m, f))
end.