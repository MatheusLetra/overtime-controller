object Frm_Funcionarios: TFrm_Funcionarios
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro de Funcionarios'
  ClientHeight = 299
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 41
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 48
    Width = 134
    Height = 21
    DataField = 'CODIGO'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 88
    Width = 321
    Height = 21
    DataField = 'NOME'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 176
    Width = 321
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 137
    Width = 320
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 440
    Top = 16
  end
  object FDQuery1: TFDQuery
    Connection = Frm_Principal.FDConnection1
    SQL.Strings = (
      'select * from funcionarios')
    Left = 504
    Top = 16
    object FDQuery1CODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object FDQuery1NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
end
