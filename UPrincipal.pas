unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite, Vcl.Menus, UHorasExtras, System.Actions, Vcl.ActnList,
  Vcl.ActnCtrls, Vcl.ActnMan, Vcl.StdStyleActnCtrls, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids,
  UFuncionarios, URel_HorasExtras;

type
  TFrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    HorasExtras1: TMenuItem;
    Relatrios1: TMenuItem;
    AmPrincipal: TActionManager;
    acHorasExtras: TAction;
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    acFuncionarios: TAction;
    CadastrodeFuncionrios1: TMenuItem;
    acRelHorasExtras: TAction;
    procedure acHorasExtrasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure acFuncionariosExecute(Sender: TObject);
    procedure acRelHorasExtrasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

procedure TFrm_Principal.acFuncionariosExecute(Sender: TObject);
begin
  TFrm_Funcionarios.Create(Self);
end;

procedure TFrm_Principal.acHorasExtrasExecute(Sender: TObject);
begin
  TFrm_HorasExtras.Create(Self);
end;

procedure TFrm_Principal.acRelHorasExtrasExecute(Sender: TObject);
begin
  TRel_HorasExtras.Create(nil);
end;

procedure TFrm_Principal.FDConnection1AfterConnect(Sender: TObject);
begin
  FDConnection1.ExecSQL(' CREATE TABLE IF NOT EXISTS FUNCIONARIOS ( ' +
    ' CODIGO INTEGER PRIMARY KEY AUTOINCREMENT,' +
    ' NOME VARCHAR(50) )'
  );

   FDConnection1.ExecSQL(' CREATE TABLE IF NOT EXISTS HORAS_EXTRAS ( ' +
    ' CODIGO INTEGER PRIMARY KEY AUTOINCREMENT,' +
    ' COD_FUNCIONARIO INTEGER, ' +
    ' MOTIVO TEXT, '   +
    ' INICIAL TIMESTAMP, ' +
    ' FINAL TIMESTAMP, ' +
    ' FOREIGN KEY (COD_FUNCIONARIO) REFERENCES FUNCIONARIOS(CODIGO) )'
  );
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
  FDConnection1.Params.Database := 'AGENDA.DB';
  FDConnection1.DriverName := 'SQLite';

  FDConnection1.Connected := True;
end;

end.
