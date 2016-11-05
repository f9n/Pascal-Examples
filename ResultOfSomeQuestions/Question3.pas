program roman_numerals;
Uses Crt;
Var number:longint;
    loop:integer;
Begin
    Clrscr;
    Repeat
    Writeln('Please Entry number:');Readln(number);
    Until ((number>1) AND (number<3999)) ;
    loop1:=1;
    While loop=1 do 
        begin
        if number>899 then 
            begin
            if number>=1000 then begin Write('M'); number-=1000; end
                            else begin Write('CM');number-=900; end;
            end  
            else begin
                 if number>399 then 
		     begin       
                     if number>=500 then begin Write('D'); number-=500; end
                                    else begin Write('CD');number-=400; end;
                     end
                     else begin
                          if number>89 then 
                              begin 
                              if number>=100 then begin Write('C'); number-=100; end
                                             else begin Write('XC');number-=90;  end;  
                              end
                              else begin
                                   if number>39 then 
                                       begin 
                                       if number>=50 then begin Write('L'); number-=50;end
                                                     else begin Write('XL');number-=40;end;
                                       end
                                       else begin
                                            if number>8 then 
                                                begin 
                                                if number>=10 then begin Write('X'); number-=10; end
                                                              else begin Write('IX');number-=9;  end;
                                                end
                                                else begin 
                                                     if number>3 then 
                                                         begin
                                                         if number>=5 then begin Write('V'); number-=5; end
                                                                      else begin Write('IV');number-=4; end;
                                                     end
                                                     else begin
                                                          if number>=1 then begin Write('I');number-=1;end
                                                                       else begin loop:=0; end;
                                                          end;
                                                     end; 
                                            end;
                                   end;
                          end;
                 end;
        end;{While}
    Readln;
End.
