unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uSchoolData, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, System.Actions, Vcl.ActnList, cxButtons, cxTextEdit, cxMemo;

type
  TForm1 = class(TForm)
    lbNameServer: TLabel;
    lbNServer: TLabel;
    lbTimeServer: TLabel;
    lbTServer: TLabel;
    tmServerTime: TTimer;
    mmInfo: TcxMemo;
    btnPupils: TcxButton;
    aAction: TActionList;
    ShowAllPupils: TAction;
    procedure tmServerTimeTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowAllPupilsExecute(Sender: TObject);
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

procedure TForm1.ShowAllPupilsExecute(Sender: TObject);
const
  _ = ' ';
var
  pupil: TPupil;
  list: TPupilsList;
begin
  mmInfo.Clear;
  mmInfo.Visible := true;
  list := VSchoolData.PupilsList;
  try
    for pupil in list do
      mmInfo.Lines.Add(IntToStr(pupil.AutoIndex) +_+ pupil.FirstName +_+ pupil.LastName)

  finally
    list.Free;
  end;
end;

procedure TForm1.tmServerTimeTimer(Sender: TObject);
begin
  lbTServer.Caption := TimeToStr(VSchoolData.GetDateTimeServer);
end;

end.
