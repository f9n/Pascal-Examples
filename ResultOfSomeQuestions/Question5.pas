program graphic_temperatures;
Uses Crt;
Var  number_days,i,k,tmp:integer;
     temp_values:Array[1..30] of integer;
     
Begin
    Clrscr;
    Write('Give the number of days:');Readln(number_days);
    Writeln('Give the temperature values:');
    for i:=1 to number_days do 
        begin
        Write(i,'. temperature value:');Readln(temp_values[i]);
        end;
    Clrscr;
    Writeln('***Graphic***');
    Write('_____________');
    tmp:=12;k:=0;
    for i:=1 to number_days-1 do 
        begin  
        if temp_values[i]<temp_values[i+1] then 
            begin 
            if i=1 then begin gotoxy(i,tmp);Write('/'); end
                   else begin
                        if k=2 then begin gotoxy(i,tmp);Write('/'); end
                               else begin
                                    gotoxy(i,tmp-1);Write('/');
                                    tmp-=1;
                                    end;
                        end;
            k:=1;	
            end
            else begin
                 if temp_values[i]>temp_values[i+1] then 
                     begin
                     if i=1 then begin gotoxy(i,tmp);Write('\');end
                            else begin 
                                 if k=1 then begin gotoxy(i,tmp);Write('\'); end
           				else begin
           				     gotoxy(i,tmp+1);Write('\');
           				     tmp+=1;
                                             end;
                                 end;
                     k:=2;
                     end
                     else begin 
                          if k=0 then begin gotoxy(i,tmp);Write('-'); end
                                 else begin
                                      if k=1 then begin gotoxy(i,tmp-1);Write('-');tmp-=1;end
                                             else begin
                                                  gotoxy(i,tmp+1);Write('-');tmp+=1; 
                                                  end;
		 	   	      end;
                          k:=0;
                          end;
                 end;
        end;{for}
    Readln;
End.
