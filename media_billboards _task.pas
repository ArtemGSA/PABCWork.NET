program media_billboards;


uses Utils;


type IntArr2D = array[,] of integer;


var
  M, N, K: integer;
  banners: IntArr2D;
  i, j: integer;
  start_time: real;


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


(*Возвращает наибольшую возможную выручку. Заказы на баннеры 
* перебираются в том порядке, в котором они перечислены в массиве
* `banners`.
* 
* Параметры: 
*   M: количество рядов плиток на билборде (фасаде)
*   N: количетсво столбцов плиток на билборде
*   K: количество заказов на баннеры
*   banners: двумерный массив целых чисел с формой `[K, 5]`. 
*       Каждый ряд массива содержит параметры заказа на баннер:
*       5 чисел R, C, H, W, P (пояснения в условии задачи).
* 
* Возвращает:
*   вещественное число
* *)
function calculate_revenue(
    M, N, K: integer; banners: IntArr2D): real;
var 
  i, row, col: integer;
  tile_price, revenue: real;
  (*Массив с лучшими ценами плиток*)
  billboard: array[,] of real;
begin
  (*Ваш код*)
  for i:=0 to K-1 do
  begin
    tile_price:=banners[i, 4]/banners[i, 2]/banners[i, 3];
    for row=:banners[i, 0] to banners[i, 0]+banners[i, 2] do
      for col=:banners[i, 1] to banners[i, 1]+banners[i, 3] do
        if tile_price > billboard[row, col] then
          billboard[row, col]:=tile_price
  end;
    for row=:0 to M do
      for col:=0 to N do
end;


(*Сортировка пузырьком для рядов массива*)
procedure bubble_sort_2d(var IntArr2D: arr);


begin
  read_input(M, N, K, banners);
  start_time := Milliseconds;
  writeln(calculate_revenue(M, N, K, banners));
  writeln(Milliseconds - start_time);
end.
