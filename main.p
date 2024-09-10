program task2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var
  fname, sname, stuclass: string;
  x, y, count, ans, ending, score, tans1, tans2, tans3: integer;
  //class1, class2, class3, myFile: TextFile;
  myFile: TextFile;
  opp: char;
const
  operator : array[1..3] of char = ('+', '-', '*');
  sclass : array[1..3] of string = ('c1', 'c2', 'c3');

begin
  randomize();
  writeln('Enter first name:');
  readln(fname);
  writeln('Enter surename:');
  readln(sname);
  writeln('Enter your class:');
  readln(stuclass);

  count := 1;
  ending := 10;
  score := 0;

  while count <= ending do
    begin
      opp := operator[1 + Random(3)];
      count := count + 1;
      x := random(10)+1;
      y := random(10)+1;
      writeln('what is ', x, opp, y, ' ?');
      readln(ans);

      tans1 := x + y;
      tans2 := x - y;
      tans3 := x * y;

      if opp = '+' then
        if (ans = tans1) then
          begin
            writeln('correct');
            score := score + 1
          end
        else
          writeln('incorrect')
      else if opp = '-' then
        if (ans = tans2) then
          begin
            writeln('correct');
            score := score + 1
          end
        else
          writeln('incorrect')
      else if opp = '*' then
        if (ans = tans3) then
          begin
            writeln('correct');
            score := score + 1
          end
        else
          writeln('incorrect')
    end;
  writeln('your score is ', score, '/10');

  assign(myFile, 'test.txt');
  rewrite(myFile);
  writeln(myFile, 'test');
  closefile(myFile);
  readln;
end.