unit Unit12;

interface

uses
   System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects,Unit3,Unit1,FMX.Layouts,
   FMX.Edit;

type
  TForm12 = class(TForm)
    play: TButton;
    Edit1: TEdit;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    procedure playClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }


  end;

var
  Form12: TForm12;



implementation

{$R *.fmx}


procedure TForm12.playClick(Sender: TObject);

begin
  initialiser(form3.FlowLayout1);
  form3.Show;
end;

 

end.
