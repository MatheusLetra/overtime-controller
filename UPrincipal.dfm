object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  Caption = 'Agenda'
  ClientHeight = 114
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 264
    Top = 24
    object Menu1: TMenuItem
      Caption = 'Menu'
      object CadastrodeFuncionrios1: TMenuItem
        Action = acFuncionarios
      end
      object HorasExtras1: TMenuItem
        Action = acHorasExtras
      end
      object Relatrios1: TMenuItem
        Action = acRelHorasExtras
      end
    end
  end
  object AmPrincipal: TActionManager
    Left = 160
    Top = 24
    StyleName = 'Standard'
    object acHorasExtras: TAction
      Caption = 'Horas Extras'
      OnExecute = acHorasExtrasExecute
    end
    object acFuncionarios: TAction
      Caption = 'Cadastro de Funcion'#225'rios'
      OnExecute = acFuncionariosExecute
    end
    object acRelHorasExtras: TAction
      Caption = 'Relat'#243'rio de Horas Extras'
      OnExecute = acRelHorasExtrasExecute
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Arth\Desktop\Matheus\Projetos\Delphi\Agenda\Wi' +
        'n32\Debug\AGENDA.DB'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    Left = 32
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 80
    Top = 24
  end
end
