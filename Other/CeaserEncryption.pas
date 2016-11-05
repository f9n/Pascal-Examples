program ceaser_encryption;
Uses Crt;
Var i:integer;
    word,encrypted_word:string;
    key:integer;
Begin
    Clrscr;
    Write('Enter to the Word');Readln(word);
    Write('Enter to the Your Key');Readln(key);
    encrypted_word:='';
    for i:=1 to length(word) do 
    begin
      encrypted_word+=Chr((ord(word[i])-65+key) mod 26 +65);
    end;
    Writeln(encrypted_word);
    Readln;
End.
