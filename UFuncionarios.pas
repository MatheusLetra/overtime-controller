unit UFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TFrm_Funcionarios = class(TForm)
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1CODIGO: TFDAutoIncField;
    FDQuery1NOME: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Funcionarios: TFrm_Funcionarios;

implementation
  uses UPrincipal;

{$R *.dfm}

procedure TFrm_Funcionarios.FormActivate(Sender: TObject);
begin
  Self.Top := 0;
end;

procedure TFrm_Funcionarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Frm_Funcionarios:= nil;
  Action := caFree;
end;

procedure TFrm_Funcionarios.FormCreate(Sender: TObject);
begin
  FDQuery1.Open();
end;

end.
