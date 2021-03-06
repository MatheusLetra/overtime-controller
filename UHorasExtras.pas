unit UHorasExtras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TFrm_HorasExtras = class(TForm)
    FDHorasExtras: TFDQuery;
    FDHorasExtrasCODIGO: TFDAutoIncField;
    FDHorasExtrasCOD_FUNCIONARIO: TIntegerField;
    FDHorasExtrasINICIAL: TSQLTimeStampField;
    FDHorasExtrasFINAL: TSQLTimeStampField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsHorasExtras: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    FDFuncionario: TFDQuery;
    FDFuncionarioCODIGO: TFDAutoIncField;
    FDFuncionarioNOME: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    dsFuncionario: TDataSource;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    FDHorasExtrasMOTIVO: TWideMemoField;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FDHorasExtrasAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_HorasExtras: TFrm_HorasExtras;

implementation
  uses
    UPrincipal;

{$R *.dfm}

procedure TFrm_HorasExtras.FDHorasExtrasAfterInsert(DataSet: TDataSet);
begin
  FDHorasExtrasINICIAL.AsDateTime := now;
  FDHorasExtrasFINAL.AsDateTime   := now;
end;

procedure TFrm_HorasExtras.FormActivate(Sender: TObject);
begin
  Self.Top := 0;
end;

procedure TFrm_HorasExtras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_HorasExtras := nil;
  Action := caFree;
end;

procedure TFrm_HorasExtras.FormCreate(Sender: TObject);
begin
  FDFuncionario.Open();
  FDHorasExtras.Open();
end;

end.
