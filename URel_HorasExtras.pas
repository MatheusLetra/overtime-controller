unit URel_HorasExtras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RLReport, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,DateUtils, System.StrUtils,
  Vcl.DBCtrls;

type
  TRel_HorasExtras = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    RLReport1: TRLReport;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Data1: TDateTimePicker;
    Data2: TDateTimePicker;
    Label2: TLabel;
    FDQuery1CODIGO: TFDAutoIncField;
    FDQuery1funcionario: TStringField;
    FDQuery1INICIAL: TSQLTimeStampField;
    FDQuery1FINAL: TSQLTimeStampField;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    FDQuery1MOTIVO: TWideMemoField;
    RLLabel8: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand4: TRLBand;
    RLBand1: TRLBand;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    RLLabel7: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel9: TRLLabel;
    FDQuery1codfuncionario: TIntegerField;
    RLLabel10: TRLLabel;
    DBText5: TDBText;
    RLBand5: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel11: TRLLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    DifTotal : Double;
    Linha: Integer;
  public
    { Public declarations }
  end;

var
  Rel_HorasExtras: TRel_HorasExtras;

implementation
  uses
    UPrincipal, System.Math;

{$R *.dfm}

procedure TRel_HorasExtras.Button1Click(Sender: TObject);
begin
  FDQuery1.Close;
  FDQuery1.SQL.Clear;
  FDQuery1.SQL.Add('SELECT h.codigo, f.nome funcionario, h.inicial, h.final, h.motivo, f.codigo codfuncionario ');
  FDQuery1.SQL.Add('from horas_extras h ');
  FDQuery1.SQL.Add('left outer join funcionarios f on (f.codigo = h.cod_funcionario) ');
  FDQuery1.SQL.Add('where INICIAL BETWEEN "' + FormatDateTime('yyyy-mm-dd', Data1.Date) + ' 00:00:00 ' + '" and "'  + FormatDateTime('yyyy-mm-dd', Data2.Date) + ' 23:59:59" ');
  FDQuery1.SQL.Add(' order by h.cod_funcionario, h.codigo ');
  FDQuery1.Open;

  if FDQuery1.IsEmpty then
  begin
    ShowMessage('N?o existem dados para este relat?rio!');
    Abort;
  end;

  Linha := 0;
  RLLabel6.Caption := 'Per?odo de: ' + FormatDateTime('dd/mm/yyyy', Data1.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', Data2.Date);

  RLReport1.PreviewModal;
end;

procedure TRel_HorasExtras.FormActivate(Sender: TObject);
begin
  Self.Top := 0;
end;

procedure TRel_HorasExtras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Rel_HorasExtras:= nil;
  Action := caFree;
end;

procedure TRel_HorasExtras.FormCreate(Sender: TObject);
begin
  Data1.Date := now;
  Data2.Date := now;
end;

procedure TRel_HorasExtras.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  DataI: TDateTime;
  DataF: TDateTime;
  DifDias: Double;
begin
  DataI := StrToDateTime(FDQuery1INICIAL.AsString);
  DataF := StrToDateTime(FDQuery1FINAL.AsString);
  DifDias := DaySpan(DataF, DataI);
  DifTotal := DifTotal + DifDias;
  RLLabel9.Caption := IfThen((DifDias >= 1) , IntToStr(Trunc(DifDias)) + ' dias, ', '') +
                  FormatDateTime('h" hrs e "n" mins"', DifDias);
end;

procedure TRel_HorasExtras.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel11.Caption := IfThen((DifTotal >= 1) , IntToStr(Trunc(DifTotal)) + ' dias, ', '') +
                  FormatDateTime('h" hrs e "n" mins"', DifTotal);
  DifTotal := 0;
end;

procedure TRel_HorasExtras.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


  if Linha = 0  then
     RLGroup1.Color := clScrollBar
  else
    RLGroup1.Color := clWhite;

  Linha := IfThen(Linha = 0, 1, 0);

end;

end.
