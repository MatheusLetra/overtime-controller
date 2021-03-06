object Frm_HorasExtras: TFrm_HorasExtras
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Horas Extras'
  ClientHeight = 660
  ClientWidth = 739
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
    Left = 48
    Top = 24
    Width = 41
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 72
    Height = 13
    Caption = 'FUNCIONARIO'
  end
  object Label3: TLabel
    Left = 48
    Top = 130
    Width = 38
    Height = 13
    Caption = 'INICIAL'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 48
    Top = 176
    Width = 29
    Height = 13
    Caption = 'FINAL'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 48
    Top = 237
    Width = 40
    Height = 13
    Caption = 'MOTIVO'
    FocusControl = DBMemo1
  end
  object DBEdit1: TDBEdit
    Left = 48
    Top = 43
    Width = 134
    Height = 21
    DataField = 'CODIGO'
    DataSource = dsHorasExtras
    Enabled = False
    TabOrder = 0
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 149
    Width = 641
    Height = 21
    DataField = 'INICIAL'
    DataSource = dsHorasExtras
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 48
    Top = 195
    Width = 641
    Height = 21
    DataField = 'FINAL'
    DataSource = dsHorasExtras
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 48
    Top = 103
    Width = 640
    Height = 21
    DataField = 'COD_FUNCIONARIO'
    DataSource = dsHorasExtras
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = dsFuncionario
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 48
    Top = 360
    Width = 640
    Height = 25
    DataSource = dsHorasExtras
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 403
    Width = 641
    Height = 249
    DataSource = dsHorasExtras
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_FUNCIONARIO'
        Title.Caption = 'FUNCION'#193'RIO'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INICIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FINAL'
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo
    Left = 48
    Top = 256
    Width = 640
    Height = 89
    DataField = 'MOTIVO'
    DataSource = dsHorasExtras
    TabOrder = 6
  end
  object FDHorasExtras: TFDQuery
    AfterInsert = FDHorasExtrasAfterInsert
    Connection = Frm_Principal.FDConnection1
    SQL.Strings = (
      'select h.*'
      'from horas_extras h'
      'left outer join funcionarios f on f.codigo = h.cod_funcionario')
    Left = 672
    Top = 24
    object FDHorasExtrasCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDHorasExtrasCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
    end
    object FDHorasExtrasINICIAL: TSQLTimeStampField
      FieldName = 'INICIAL'
      Origin = 'INICIAL'
    end
    object FDHorasExtrasFINAL: TSQLTimeStampField
      FieldName = 'FINAL'
      Origin = 'FINAL'
    end
    object FDHorasExtrasMOTIVO: TWideMemoField
      FieldName = 'MOTIVO'
      BlobType = ftWideMemo
    end
  end
  object dsHorasExtras: TDataSource
    DataSet = FDHorasExtras
    Left = 744
    Top = 24
  end
  object FDFuncionario: TFDQuery
    Connection = Frm_Principal.FDConnection1
    SQL.Strings = (
      'select * from funcionarios')
    Left = 672
    Top = 96
    object FDFuncionarioCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object FDFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsFuncionario: TDataSource
    DataSet = FDFuncionario
    Left = 752
    Top = 96
  end
end
