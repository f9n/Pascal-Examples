program pascal_menu;
Uses Crt;
Var a:integer;
    k,b,m:integer;
Begin
    Clrscr;
    a:=2;k:=0;m:=0;
    While k=0 do begin
                 Clrscr;
               Window(1,a-1,20,a);
                 Textbackground(7);
                 Textcolor(0);
                 Write('_______________');
               Window(1,a,20,a+1);
                 if m=0 then begin Textbackground(2); end
			else begin Textbackground(7); end;
                 Write('| New      <N> |');
               Window(1,a+1,20,a+2);  
                 if m=1 then begin Textbackground(2); end
			else begin Textbackground(7); end;
                 Write('| Open     <O> |');
               Window(1,a+2,20,a+3);
                 if m=2 then begin Textbackground(2); end
 			else begin Textbackground(7); end;
                 Write('| Save     <S> |');
               Window(1,a+3,20,a+4);
                 if m=3 then begin Textbackground(2); end
			else begin Textbackground(7); end;
                 Write('| Esc    <Esc> |');
               Window(1,a+4,20,a+5);
                 Write('_______________');
                 Read(b);
                 CASE b OF
                      2: begin if m=3 then begin m:=3 end 
				      else begin m+=1; end;
			 end;
                      4: begin end;
                      6: begin end;
                      8: begin if m=0 then begin m:=0 end 
				      else begin m-=1; end;
                         end;
                      else Write('Undefined entry...');
                      end;       
                 Clrscr;
                 end;
    Readln;
End.
