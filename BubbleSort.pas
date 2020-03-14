Program BubbleSort;


type IntArr1D=array of integer;


var a:IntArr1D;


procedure bubble_sort (var a:IntArr1D);
var n, i, j, tmp: integer;
begin;
  n:=length(a);
  for i:=0 to n-2 do
    for j:=0 to n-2-i do
      if a[j]>a[j+1] then
      begin
        tmp:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=tmp;
      end;
end;


procedure read_1d_int_array(arr: IntArr1D);
var
  i, len: integer;
begin
  len := length(arr);
  for i:=0 to len-1 do
    read(arr[i]);
end;

procedure write_1d_int_array(arr: IntArr1D);
var
  i, len: integer;
begin
  len := length(arr);
  for i:=0 to len-1 do
    write(arr[i], ' ');
  writeln()
end;


begin;
  SetLength(a, 5);
  read_1d_int_array(a);
  bubble_sort (a);
  write_1d_int_array(a);
end.