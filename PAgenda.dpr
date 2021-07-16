program PAgenda;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {Frm_Principal},
  UHorasExtras in 'UHorasExtras.pas' {Frm_HorasExtras},
  UFuncionarios in 'UFuncionarios.pas' {Frm_Funcionarios},
  URel_HorasExtras in 'URel_HorasExtras.pas' {Rel_HorasExtras};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
