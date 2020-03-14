unit libraryArtem;

interface

type
  masbool=array of boolean;
  mas=array [1..50] of real;
  masint=array of integer;
  m2d=array [1..10, 1..10] of real;
procedure wwod (var m:mas; nn:integer);
procedure wuwod (m:mas; nn:integer);
procedure summa (m:mas; nn:integer; var sum:real);
procedure average (m: mas; nn:integer; var middle:real);
procedure fill (var m:mas; nn: integer);
procedure stepen (var st: integer);
procedure fill2d (var m:m2d; yy: integer; xx: integer);
procedure wuwod2d (m:m2d; nn:integer; mm: integer);
function fibonaccin(n: integer ; y: integer):integer;
Function fibonaccirec(n: integer ):integer;
Function gcdF (x, y: integer): integer;
Function lcmf(a, b: integer):integer; 
Function factrecf (a: integer):integer;
procedure bubble_sort (var a:masint);
Function is_powerint (n, base: integer): boolean;
Function get_power_forward_int (n, base, power: integer): integer;
Function get_power_backward_int (n, base: integer): integer;
Function prime(n: integer): boolean;
procedure content;

implementation

procedure wwod(var m:mas; nn: integer);
var
  i:integer;
begin
  for i:=1 to nn do
  begin
    write('a[', i, ']='); read(m[i])
  end
end;


procedure wuwod(m:mas; nn:integer);
var
  i:integer;
begin;
  for i:=1 to nn do
    write(m[i], ' ');
  writeln
end;


Function is_powerint (n, base: integer): boolean;
begin;
  if n = 1 then 
    is_powerint := true
  else
    if n mod base = 0 then 
      is_powerint := is_powerint(n div base, base)
    else
      is_powerint := false;
end;


procedure bubble_sort (var a:masint);
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


Function fibonaccin(n: integer ; y: integer):integer;
var
  i, x, z: integer;
begin;
  x := 1;
  y := 1;
  for i:=3 to n do
  begin
    z := y;
    y += x;
    x := z;
  end;
  fibonaccin := y
end;


{Procedure wuwod texstgame(str:string);
begin;
  write(str);
end;}


procedure wuwod2d (m:m2d; nn:integer; mm: integer);
var
  i, j:integer;
begin;
  for i:=1 to nn do
  begin
    for j:=1 to mm do
    if m[i, j]>0 then
      write(m[i, j]:20);
  writeln
  end
end;


Function factrecf (a: integer):integer;
begin;
  if a<=15
  then
    factrecf:=1
  else
    factrecf:=a*factrecf(a-1);
end;


Function gcdF (x, y: integer): integer;
var z: integer;
begin
  if y>x then 
  begin
    z := x;
    x := y;
    y := z; 
  end;
  while y<>0 do
  begin
    z:=y;
    y:=x mod y;
    x:=z;
  end;
  gcdF:=x;
end;


Function fibonaccirec(n: integer ):integer;
var
  i, x, z: integer;
begin;
  if n<3 then
    fibonaccirec:=1
  else
  begin
    fibonaccirec :=fibonaccirec(n-1)+fibonaccirec(n-2);
  end
end;



Function lcmf(a, b: integer):integer; 
var
  x: integer;
begin
  x:=a*b div gcdF(a, b);
  lcmf:=x;
end;


procedure summa(m:mas; nn:integer; var sum:real);
var
  i: integer;
begin;
  sum:=0;
  for i:=1 to nn do
    sum:=sum+m[i]
end;


Function get_power_backward_int (n, base: integer): integer;
var i: integer;
begin;
  if n = 1 then 
    get_power_backward_int := 0
  else
    if n mod base = 0 then
    begin
      i:=get_power_backward_int(n div base, base);
      if i >= 0 then
        get_power_backward_int := 1 + i
      else
        get_power_backward_int:=-1
    end
    else
      get_power_backward_int := -1;
end;


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


Function prime(n: integer): boolean;
var i:integer;
begin;
  prime:=true;
  for i:=2 to trunc(sqrt(n)) do
  begin
    if n mod i=0 then
    begin
      prime:=false;
      break
    end;
  end;
end;


procedure average(m:mas; nn:integer; var middle:real);
var
  i:integer;
begin;
  middle:=0;
  for i:=1 to nn do
    middle:=middle+m[i];
  middle:=middle/nn;
end;


procedure content;
begin;
  write('Coдержимое библиотеки: ',' mas=array of real; ',
'procedure wwod (var m:mas; nn:integer); ',
'procedure wuwod (m:mas; nn:integer);',
'procedure summa (m:mas; nn:integer; var sum:real); ',
'procedure average (m: mas; nn:integer; var middle:real); ',
'procedure fill (var m:mas; nn: integer); ',
'procedure stepen (var st: integer); ',
'procedure fill2d (var m:m2d; xx, yy: integer); ',
'Function fibonaccin(n: integer ; y: integer):integer;',
'Function fibonaccirec(n: integer ):integer;',
'Function gcdF (x, y: integer): integer;',
'Function lcmf(a, b: integer):integer; ',
'Function factrecf (a: integer):integer;',
'procedure bubble_sort (var a:IntArr1D);',
'Function is_powerint (n, base: integer): boolean;',
'Function get_power_backward_int (n, base: integer): integer;',
'Function get_power_forward_int (n, base, power: integer): integer;',
'Function prime(n: integer): boolean;',
'procedure content; ')
end;


procedure fill (var m:mas; nn: integer);
var
  i: integer; 
begin;
  randomize;
  for i:=1 to nn do
    m[i]:= random (10000000) mod 10;
end;


procedure fill2d (var m:m2d; yy: integer; xx:integer);
var
  i, j: integer; 
begin;
  randomize;
  for i:=1 to xx do
    for j:=1 to yy do
      m[i, j]:= random (100000000000000) /yy;
end;


procedure stepen (var st: integer);
var
  i, num, nn: integer;
begin
  st:=1;
  write('Введите число ');
  read (num);
  write('Введите степень ');
  read (nn);
  for i:=1 to nn do
    st:=st*num
end;


begin;

end.