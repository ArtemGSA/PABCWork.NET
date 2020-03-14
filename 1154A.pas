Program A1154;
var s, d, f, j: integer;
begin;
  read(s, d, f, j);
  if (s>d) and (s>f) and (s>j) then
    write(s-d, ' ', s-f, ' ', s-j)
  else
    if (d>s) and (d>f) and (d>j) then
      write(d-s, ' ', d-f, ' ', d-j)
    else
      if (f>s) and (f>d) and (f>j) then
        write(f-s, ' ', f-d, ' ', f-j)
      else
        if (j>s) and (j>f) and (j>d) then
          write(j-s,' ', j-f, ' ', j-d)
end.