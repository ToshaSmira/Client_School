unit uSchoolData;

interface

uses
  System.SysUtils, System.Classes, uROBaseConnection, uROTransportChannel, uROIndyTCPChannel, uROMessage, uROBinMessage,
  uROComponent, uROChannelAwareComponent, uRORemoteService, SchoolLibrary_Intf, uROBaseHTTPClient, uROIndyHTTPChannel;

type
  TPupil = roPupil;
  TPupilsList = roPupilsView;

  TSchoolData = class(TDataModule)
    SchoolService: TRORemoteService;
    SchoolMessage: TROBinMessage;
    Channel: TROIndyHTTPChannel;
  private
    { Private declarations }
    function Get_ISchoolService: ISchoolService;
  public
    { Public declarations }
    function GetNameServer: string;
    function GetDateTimeServer: TDateTime;
    function PupilsList: TPupilsList;
  end;

  function VSchoolData: TSchoolData;

{$WRITEABLECONST ON}
const
  __SchoolData: TSchoolData = nil;
{$WRITEABLECONST OFF}

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function VSchoolData: TSchoolData;
begin
  if not Assigned(__SchoolData) then
    __SchoolData := TSchoolData.Create(nil);
  Result := __SchoolData;
end;

{ TSchoolData }

function TSchoolData.GetDateTimeServer: TDateTime;
begin
  try
    Result := Get_ISchoolService.GetDateTimeServer;
  except
    Result := 0;
  end;
end;

function TSchoolData.GetNameServer: string;
begin
  try
    Result := AnsiString(Get_ISchoolService.GetNameServer);
  except
    Result := string.Empty;
  end;
end;

function TSchoolData.Get_ISchoolService: ISchoolService;
begin
  Result := SchoolService as ISchoolService;
end;

function TSchoolData.PupilsList: TPupilsList;
begin
  try
    Get_ISchoolService.GetPupilsList(Result);
  except
    Result := nil;
  end;
end;

initialization
finalization
  if Assigned(__SchoolData) then
    FreeAndNil(__SchoolData);

end.
