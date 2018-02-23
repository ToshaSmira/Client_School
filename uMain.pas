unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uSchoolData;

type
  TForm1 = class(TForm)
    lbNameServer: TLabel;
    lbNServer: TLabel;
    lbTimeServer: TLabel;
    lbTServer: TLabel;
    tmServerTime: TTimer;
    procedure tmServerTimeTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  lbNServer.Caption := VSchoolData.GetNameServer;
  lbTServer.Caption := TimeToStr(VSchoolData.GetDateTimeServer);
end;

procedure TForm1.tmServerTimeTimer(Sender: TObject);
begin
  lbTServer.Caption := TimeToStr(VSchoolData.GetDateTimeServer);
end;

end.
