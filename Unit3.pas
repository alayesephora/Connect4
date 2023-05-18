
unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.Grid, FMX.Controls.Presentation, FMX.ScrollBox, FMX.Menus,
  FMX.StdCtrls, FMX.Objects, FMX.Edit, FMX.Layouts,Unit1, System.Math.Vectors,
  FMX.Controls3D, FMX.Objects3D;

type

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    FlowLayout1: TFlowLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Rectangle12: TRectangle;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Rectangle18: TRectangle;
    Rectangle19: TRectangle;
    Rectangle20: TRectangle;
    Rectangle21: TRectangle;
    Rectangle22: TRectangle;
    Rectangle23: TRectangle;
    Rectangle24: TRectangle;
    Rectangle25: TRectangle;
    Rectangle26: TRectangle;
    Rectangle27: TRectangle;
    Rectangle28: TRectangle;
    Rectangle29: TRectangle;
    Rectangle30: TRectangle;
    Rectangle31: TRectangle;
    Rectangle32: TRectangle;
    Rectangle33: TRectangle;
    Rectangle34: TRectangle;
    Rectangle35: TRectangle;
    Rectangle36: TRectangle;
    Rectangle37: TRectangle;
    Rectangle38: TRectangle;
    Rectangle39: TRectangle;
    Rectangle40: TRectangle;
    Rectangle41: TRectangle;
    Rectangle42: TRectangle;
    Rectangle43: TRectangle;
    Rectangle44: TRectangle;
    Rectangle45: TRectangle;
    Rectangle46: TRectangle;
    Rectangle47: TRectangle;
    Rectangle48: TRectangle;
    Rectangle49: TRectangle;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Rectangle50: TRectangle;
    Edit1: TEdit;
    Edit2: TEdit;
    Rectangle51: TRectangle;

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure desactiver_bouton;
    procedure verification;
    procedure fonction_des_boutons (LColonne: integer);
  end;

var
  Form3: TForm3;


implementation

{$R *.fmx}

procedure TForm3.desactiver_bouton;
begin
    Button1.Enabled := False;
    Button2.Enabled := False;
    Button3.Enabled := False;
    Button4.Enabled := False;
    Button5.Enabled := False;
    Button6.Enabled := False;
    Button7.Enabled := False;
end;

procedure TForm3.verification;
begin
    if winner = true  then
            begin
              showmessage('Vous avez gagné');
              desactiver_bouton;
              close;

            end;
     if compteur = 49  then
            begin
              showmessage('Vous etes à égalité');
              desactiver_bouton;
              close;
            end;
end;

procedure TForm3.fonction_des_boutons (LColonne: integer);
begin
  bouton_cliker (LColonne);
  verification;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  fonction_des_boutons (0);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  fonction_des_boutons (1);
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
 fonction_des_boutons (2);
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
 fonction_des_boutons (3);
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  fonction_des_boutons (4);
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  fonction_des_boutons (5);
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
  fonction_des_boutons (6);
end;

end.
