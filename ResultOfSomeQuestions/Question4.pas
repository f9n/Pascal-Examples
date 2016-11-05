program again_number;
Uses Crt;
Var sequence:Array[1..10000] of char;
    a,k,tmp_a,tmp_k:integer;
    loop:integer;
    x:byte;
    m:char;
    round_number:integer;
Begin
    Clrscr;
    a:=1;k:=1;
    tmp_a:=1;tmp_k:=1;
    Writeln('RoundNumber:');Readln(round_number);
    Randomize;
    for loop:=1 to round_number do 
        begin
        x:=Random(2);
        if x=1 then m:='H'
               else m:='T';
        Write(m);
        sequence[i]:=m;
        end;
    sequence[round_number+1]:='Y';
    Writeln('------------------');
    for loop:=1 to round_number+1 do 
        begin
        Write(sequence[loop]);
        end;  
    for loop:=1 to round_number do 
        begin
        if sequence[loop]=sequence[loop+1] then 
            begin
            if sequence[loop]='T' then k+=1
                                  else a+=1;
            end
            else begin
                 if a>tmp_a then begin tmp_a:=a;  end;
                 if k>tmp_k then begin tmp_k:=k;  end;
                 a:=1;k:=1;
                 end;                    
        end;
    Readln;
    if tmp_a>tmp_k then 
        begin 
        Writeln('Number of Repetition:',tmp_a);
        Write('Coin Status: H'); 
        end
        else begin 
             if tmp_a=tmp_k then 
                 begin 
                 Writeln('Number of Repetition:',tmp_a);
                 Write(',,,Coin Status: H,T'); 
                 end
                 else begin 
                      Writeln('Number of Repetition:',tmp_k);
                      Write('Coin Status: T'); 
                      end; 
             end;
    Readln;
End.
