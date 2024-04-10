program CreateAndWriteToFile;
var
  myFile: Text;
  i, randomNumber: integer;

begin
  Assign(myFile, 'myFile.txt');
  Rewrite(myFile);

Randomize;
  for i := 1 to 20 do
  begin
    randomNumber := Random(1000);
    writeln(myFile, randomNumber, ' ');
  end;


  Close(myFile);

  writeln('Текст успешно записан в файл.');
end.
