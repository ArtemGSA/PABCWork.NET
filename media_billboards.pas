program media_billboards;


uses Utils;


type IntArr2D = array[,] of integer;
IntArr1D = array of integer;
RealArr1D = array of real;


var
  M, N, K: integer;
  banners: IntArr2D;
  indices: IntArr1D;
  tile_prices: RealArr1D;
  i, j: integer;
  start_time, r: real;


(*Процедура для считывания данных с клавиатуры*)
procedure read_input(
    var M, N, K: integer; var banners: IntArr2D);
  var i: integer;
begin
  readln(M, N, K);
  setLength(banners, K, 5);
  for i := 0 to K-1 do begin
    readln(
        banners[i, 0], 
        banners[i, 1], 
        banners[i, 2],
        banners[i, 3],
        banners[i, 4]
    )
  end
end;


procedure bubble_sort_ind(var a: RealArr1D; var ind: IntArr1D);
var n, i, j, tmp: integer;
    tmpr: real;
begin;
  n:=length(a);
  for i:=0 to n-2 do
    for j:=0 to n-2-i do
      if a[j]<a[j+1] then
      begin
        tmpr:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=tmpr;
        tmp:=ind[j];
        ind[j]:=ind[j+1];
        ind[j+1]:=tmp;
      end;
end;





function calculate_revenue(M, N, K: integer; banners:IntArr2D; indices:IntArr1D): real;
var billboard: IntArr2D;
i, col, row: integer;
p, r: real;
begin;
  r:=0;
  Setlength(billboard, M, N);
  for i:=0 to K-1 do
  begin;
    p:=banners[indices[i], 4]/banners[indices[i], 2]/banners[indices[i], 3];
    for row:=banners[indices[i], 0] to banners[indices[i], 0]+banners[indices[i], 2]-1 do
      col:=banners[indices[i], 1];
      while col<banners[indices[i], 3]+banners[indices[i], 1] do
        if billboard[row, col]>0 then
          col+=billboard[row, col]
        else
        begin;
          r+=p;
          billboard[row, col]:=banners[indices[i], 3]+banners[indices[i], 1]-col;
          col+=1;
        end;
  end;
  calculate_revenue:=r;
end;


begin;
  read_input(M, N, K, banners);
  SetLength(tile_prices, K);
  SetLength(indices, K);
  for i:=0 to K-1 do
  begin
    tile_prices[i]:=banners[i, 4]/banners[i, 2]/banners[i, 3];
    indices[i]:=i;
  end;
  bubble_sort_ind(tile_prices, indices);
  for i:=0 to K-1 do
  begin
    writeln(tile_prices[i], ' ', indices[i]);
  end;
  r:=calculate_revenue(M, N, K, banners, indices);
  writeln(r);
end.