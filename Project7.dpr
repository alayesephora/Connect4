program Project7;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit12 in 'Unit12.pas' {Form12},
  Unit3 in 'Unit3.pas' {Form3},
  Unit1 in 'Unit1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
