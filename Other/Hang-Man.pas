{*Hang-Man.But predictions are just number*}
program hang_man;
Uses Crt;
Var  computer_prediction,a:integer;
     i,k:integer;
    
     sequence:Array[1..9] of integer;
Begin
    Clrscr;
    Write('Please,entry Computer s prediction.(Between 1-100)');Readln(computer_prediction);
    a:=1;k:=0;
    While a<10 do 
    begin
    	Clrscr;
	    Write('What are your prediction(Between 1-100)');Readln(sequence[a]);
      Clrscr;
	    k+=1;
	    if computer_prediction=sequence[a] then 
			begin a:=11; end
      else 
			begin 
      	CASE a OF
        	1: begin
          	 {*Doing right wall*}
          	 for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             end;
         	2: begin 
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             {*Doing top wall*}
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end; 
             end;
          3: begin 
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             {*Doing rope*}
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             end;
          4: begin
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             {*Doing top and down by head*}
             for i:=7 to 9  do begin gotoxy(i,5);Write('-'); 
                      							 gotoxy(i,8);Write('-');end;
             {*Doing right and left by head*}
             for i:=6 to 7  do begin gotoxy(6,i);Write('|');
                                     gotoxy(10,i);Write('|');end;
             end;
          5: begin
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             {*Doing top and down by head*}
             for i:=7 to 9  do begin gotoxy(i,5);Write('-'); 
                                     gotoxy(i,8);Write('-');end;
             {*Doing right and left by head*}
             for i:=6 to 7  do begin gotoxy(6,i);Write('|');
                                     gotoxy(10,i);Write('|');end;
             {*Doing body*}
             for i:=9 to 12 do begin gotoxy(8,i);Write('|'); end;
             end;
          6: begin
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             {*Doing top and down by head*}
             for i:=7 to 9  do begin gotoxy(i,5);Write('-'); 
                                     gotoxy(i,8);Write('-');end;
             {*Doing right and left by head*}
             for i:=6 to 7  do begin gotoxy(6,i);Write('|');
                                     gotoxy(10,i);Write('|');end;
             {*Doing body*}
             for i:=9 to 12 do begin gotoxy(8,i);Write('|'); end;
             {*Doing right arm*}
             for i:=10 to 10 do begin gotoxy(10,i-1);Write('/');
                                      gotoxy(9,i);Write('/');end;
             end;
          7: begin
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             {*Doing top and down by head*}
             for i:=7 to 9  do begin gotoxy(i,5);Write('-');
						                         gotoxy(i,8);Write('-');end;
             {*Doing right and left by head*}
             for i:=6 to 7  do begin gotoxy(6,i);Write('|');
                                     gotoxy(10,i);Write('|');end;
             {*Doing body*}
             for i:=9 to 12 do begin gotoxy(8,i);Write('|'); end;
             {*Doing right arm*}
             for i:=10 to 10 do begin gotoxy(10,i-1);Write('/');
                                      gotoxy(9,i);Write('/');end;
             {*Doing left arm*}
             for i:=6 to 6  do begin gotoxy(i,9);Write('\');
                                     gotoxy(i+1,10);Write('\');end;
             end;
          8: begin 
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             {*Doing top and down by head*}
             for i:=7 to 9  do begin gotoxy(i,5);Write('-'); 
                                     gotoxy(i,8);Write('-');end;
             {*Doing right and left by head*}
             for i:=6 to 7  do begin gotoxy(6,i);Write('|');
                                     gotoxy(10,i);Write('|');end;
             {*Doing body*}
             for i:=9 to 12 do begin gotoxy(8,i);Write('|'); end;
             {*Doing right arm*}
             for i:=10 to 10 do begin gotoxy(10,i-1);Write('/');
                                      gotoxy(9,i);Write('/');end;
             {*Doing left arm*}
             for i:=6 to 6  do begin gotoxy(i,9);Write('\');
                                     gotoxy(i+1,10);Write('\');end;
             {*Doing right leg*}
             for i:=13 to 13  do begin gotoxy(9,i);Write('\');
                                       gotoxy(10,i+1);Write('\');end;
             end;
          9: begin
             for i:=1 to 20 do begin gotoxy(15,i);Write('|'); end;
             for i:=1 to 15 do begin gotoxy(i,1);Write('_'); end;
             for i:=2 to 4  do begin gotoxy(8,i);Write('|'); end;
             {*Doing top and down by head*}
             for i:=7 to 9 do begin gotoxy(i,5);Write('-'); 
                                    gotoxy(i,8);Write('-');end;
             {*Doing right and left by head*}
             for i:=6 to 7  do begin gotoxy(6,i);Write('|');
                                     gotoxy(10,i);Write('|');end;
             {*Doing body*}
             for i:=9 to 12 do begin gotoxy(8,i);Write('|'); end;
             {*Doing right arm*}
             for i:=10 to 10 do begin gotoxy(10,i-1);Write('/');
                                      gotoxy(9,i);Write('/'); end;
             {*Doing left arm*}
             for i:=6 to 6 do begin gotoxy(i,9);Write('\');
                                    gotoxy(i+1,10);Write('\');end;
             {*Doing right leg*}
             for i:=13 to 13 do begin gotoxy(9,i);Write('\');
                                      gotoxy(10,i+1);Write('\');end;
             {*Doing left leg*}
             for i:=6 to 6 do begin gotoxy(i+1,13);Write('/'); 
                                    gotoxy(i,14);Write('/');end;
             end; 
         end;{Case}
        if a=9 then 
					begin 
         	gotoxy(16,2);Write('You hanged this man');a:=10;
        	gotoxy(16,3);Write('Computer prediction: ',computer_prediction);
          end;{then end}
      end;{else end}
      gotoxy(16,4);Write('Your Predictions: ');
      for i:=1 to k do begin gotoxy(14+3*i,5);Write(sequence[i]); end;
      Readln;
      a+=1;
		end;{while end}
	if a=12 then begin Clrscr;Write('Good Well,Your prediction is true',computer_prediction); end;
	Readln;Clrscr; 
End.
