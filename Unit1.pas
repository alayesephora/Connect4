unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.Grid, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Menus,
  FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.Layouts;




  procedure horizontal_win(i,j: integer);
  procedure vertical_win(i,j: integer);
  procedure diagonal_win_gauche(i,j: integer);
  procedure diagonal_win_droite(i,j: integer);
  procedure win;
  procedure calcul_intermediaire (j,i: integer);
  procedure bouton_cliker (j: integer);
   procedure initialiser(LFlowLayout1: TFlowLayout);
 Var
    clicked,winner,isclicked: boolean;
    compteur  : integer;
    Ltableau : Array [0..6] of Array [0..6] of  TControl;

implementation


procedure diagonal_win_gauche(i,j: integer);
begin
   if ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+1][j+1]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+2][j+2]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+3][j+3]).Fill.Color=TAlphacolorrec.green))or
            ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+1][j+1]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+2][j+2]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+3][j+3]).Fill.Color=TAlphacolorrec.blue)) then

                begin
                    winner := True;
                end
end;

procedure diagonal_win_droite(i,j: integer);
begin
   if ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+1][j-1]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+2][j-2]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+3][j-3]).Fill.Color=TAlphacolorrec.green))or
            ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+1][j-1]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+2][j-2]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+3][j-3]).Fill.Color=TAlphacolorrec.blue)) then

                begin
                    winner := True;
                end
end;
procedure vertical_win(i,j: integer);
begin
   if ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+1][j]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+2][j]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i+3][j]).Fill.Color=TAlphacolorrec.green))or
           ( (Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+1][j]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+2][j]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i+3][j]).Fill.Color=TAlphacolorrec.blue)) then

                begin
                    winner := True;
                end
end;
procedure horizontal_win(i,j: integer);

begin
  if ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i][j+1]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i][j+2]).Fill.Color=TAlphacolorrec.green) and
            (Trectangle(Ltableau[i][j+3]).Fill.Color=TAlphacolorrec.green) ) or
            ((Trectangle(Ltableau[i][j]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i][j+1]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i][j+2]).Fill.Color=TAlphacolorrec.blue) and
            (Trectangle(Ltableau[i][j+3]).Fill.Color=TAlphacolorrec.blue) )then

      begin
       winner := True;
       end
end;

procedure win;
 var
i,j: integer;
begin
  for i := 0 to 6 do
    begin
      for j := 0 to 3 do
         begin
           horizontal_win(i,j);
           vertical_win(j,i);
           if winner = True then
              break;
         end;
        if winner = True then
          break;
    end;
    for i := 0 to 3 do
      begin
        for j := 0 to 3 do
          begin
            diagonal_win_gauche(i,j);
            diagonal_win_droite(i,j+3);
            if winner = True then
              break;
          end;
          if winner = True then
              break;
      end;

end;

 procedure initialiser(LFlowLayout1: TFlowLayout);
 begin
    var
  i,j : integer;
 begin
     for i := 0 to 6 do
    begin
       for j := 0 to 6 do
        Ltableau[i][j] := LFlowLayout1.Controls[7*i+j];
    end;
  winner := False;
  clicked := False;
  isclicked := False;
  compteur := 0;
 end;
 end;
procedure calcul_intermediaire (j,i: integer);
begin
     if clicked = False  then
          begin
           win;
           Trectangle(Ltableau[i][j]).Fill.color := TAlphacolorrec.blue;
           clicked := True ;
           compteur := compteur +1;
           win;
          end
       else
          begin
           win;
           Trectangle(Ltableau[i][j]).Fill.color := TAlphacolorrec.green;
           clicked := False;
           compteur := compteur +1;
           win;
          end;
end;


 procedure bouton_cliker (j: integer);
begin
  if  (Trectangle(Ltableau[6,j]).Fill.color <>  TAlphacolorrec.blue)
    and (Trectangle(Ltableau[6,j]).Fill.color <>  TAlphacolorrec.green)  then
       calcul_intermediaire (j,6)

  else
  begin
     if  (Trectangle(Ltableau[5,j]).Fill.color <>  TAlphacolorrec.blue)
        and (Trectangle(Ltableau[5,j]).Fill.color <>  TAlphacolorrec.green)  then
           calcul_intermediaire (j,5)
     else
      begin
        if  (Trectangle(Ltableau[4,j]).Fill.color <>  TAlphacolorrec.blue)
            and (Trectangle(Ltableau[4,j]).Fill.color <>  TAlphacolorrec.green)  then
                  calcul_intermediaire (j,4)
        else
          begin
          if  (Trectangle(Ltableau[3,j]).Fill.color <>  TAlphacolorrec.blue)
                 and (Trectangle(Ltableau[3,j]).Fill.color <>  TAlphacolorrec.green)  then
                      calcul_intermediaire (j,3)
             else
                begin
                  if  (Trectangle(Ltableau[2,j]).Fill.color <>  TAlphacolorrec.blue)
                          and (Trectangle(Ltableau[2,j]).Fill.color <>  TAlphacolorrec.green)  then
                               calcul_intermediaire (j,2)
                    else
                      begin
                       if  (Trectangle(Ltableau[1,j]).Fill.color <>  TAlphacolorrec.blue)
                              and (Trectangle(Ltableau[1,j]).Fill.color <>  TAlphacolorrec.green)  then
                                   calcul_intermediaire (j,1)
                        else
                          begin
                           if  (Trectangle(Ltableau[0,j]).Fill.color <>  TAlphacolorrec.blue)
                                  and (Trectangle(Ltableau[0,j]).Fill.color <>  TAlphacolorrec.green)  then
                                      calcul_intermediaire (j,0)
                          end;

                      end;
                end;
          end;
      end;

  end;

 end;


end.
