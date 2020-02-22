Program CardGame;
var i: integer;
ans, table, hand: string;
begin;
  readln(table);
  ans:='NO';
  readln(hand);
  for i:=1 to 5 do
    if (hand[3*i-2]=table[1]) or (hand[3*i-1]=table[2]) then
      ans:='YES';
  write(ans)
end.