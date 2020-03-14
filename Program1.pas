Program a1;
var
  name:string;
begin;
  repeat
    write('Введите имя. ');
    readln(name);
  until length(name)<20;
  write('Hello, ', name, '!')
end.
