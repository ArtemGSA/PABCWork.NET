Program A785;
var s: string;
n, i, g: integer;
begin;
  readln(n);
  g:=0;
  i:=0;
  while i<n do
  begin
    readln(s);
    case s of
    'Tetrahedron': g+=4;
    'Cube': g+=6;
    'Octahedron': g+=8;
    'Dodecahedron': g+=12;
    'Icosahedron': g+=20;
    end;
    i+=1
  end;
  write(g);
end.