=program  one_automorphic_numbers;
Uses Crt;
Var  automorphic_number:integer;
     loop1:integer;
     remaining:integer;
     Tmp1:integer;
     Tmp2:longint;
Begin
    ClrScr;
    Writeln('How many do you need 1-automorphic numbers: ');Readln(automorphic_number);
    loop1:=1;Tmp1:=0;Tmp2:=0;
    while Tmp1<automorphic_number do 
        begin
        Tmp2:=loop1*loop1; 
        if loop1>9 then  
            begin 
            if loop1>99 then 
                begin
                if loop1>999 then 
                    begin
                    if loop1>9999 then remaining:=Tmp2 mod 100000
                                  else remaining:=Tmp2 mod 10000;
                    end
                    else  remaining:=Tmp2 mod 1000;
                end
                else remaining:=Tmp2 mod 100;     
            end
            else remaining:=Tmp2 mod 10;
        if remaining=loop1 then 
	    begin
            Writeln('Automarphic Number: ',loop1);
            Tmp1:=Tmp1+1;
            end;
        loop1:=loop1+1;
        end;{While}
    Readln;
End.
