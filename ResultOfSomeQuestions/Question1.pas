program cube_numbers;
Uses Crt;
Var Tmp1,Tmp2:integer;
    min,max:longint;
Begin
    ClrScr;
    Writeln('*** Display minimum and maximum 4-digit cube number program ***');
    Tmp1:=1;
    Tmp2:=1;
    min:=999;
    while Tmp1<10000 do 
    	begin
        Tmp1:=Tmp2*Tmp2*Tmp2;
        if Tmp1>min then 
		    begin
                    min:=Tmp1;
	            Writeln('Minimum  4-digit cube number: ',min);
                    min:=99999;
                    end;
        Tmp2:=Tmp2+1; {*Tmp2+=1*}
        end;
    max:=(Tmp2-2)*(Tmp2-2)*(Tmp2-2);
    Writeln('Maximum 4-digit cube number: ',max);
    Readln;
End.
