object Rel_HorasExtras: TRel_HorasExtras
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Horas Extras'
  ClientHeight = 83
  ClientWidth = 525
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 417
    Height = 81
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Per'#237'odo:'
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 228
      Top = 28
      Width = 15
      Height = 12
      Caption = 'a'
    end
    object Data1: TDateTimePicker
      Left = 112
      Top = 24
      Width = 100
      Height = 21
      Date = 44393.000000000000000000
      Time = 0.390462685187230800
      TabOrder = 0
    end
    object Data2: TDateTimePicker
      Left = 255
      Top = 24
      Width = 100
      Height = 21
      Date = 44393.000000000000000000
      Time = 0.390462685187230800
      TabOrder = 1
    end
  end
  object Button1: TButton
    Left = 418
    Top = 23
    Width = 105
    Height = 30
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 135
    Width = 794
    Height = 1123
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand2: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 60
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 276
        Top = 7
        Width = 166
        Height = 16
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Horas Extras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 1
        Top = 30
        Width = 716
        Height = 29
        Align = faBottom
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Horas Extras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 98
      Width = 718
      Height = 31
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 3
        Top = 11
        Width = 133
        Height = 19
        Alignment = taCenter
        Caption = 'C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 274
        Top = 11
        Width = 133
        Height = 19
        Alignment = taCenter
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 412
        Top = 11
        Width = 133
        Height = 19
        Alignment = taCenter
        Caption = 'Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 549
        Top = 11
        Width = 166
        Height = 19
        Alignment = taCenter
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 129
      Width = 718
      Height = 117
      DataFields = 'codfuncionario'
      BeforePrint = RLGroup1BeforePrint
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object DBText5: TDBText
          Left = 81
          Top = 5
          Width = 133
          Height = 17
          Alignment = taCenter
          DataField = 'funcionario'
          DataSource = DataSource1
          Transparent = False
        end
        object RLLabel10: TRLLabel
          Left = 3
          Top = 5
          Width = 72
          Height = 15
          Alignment = taCenter
          Caption = 'Funcion'#225'rio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 59
        AutoExpand = False
        AutoSize = True
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand1BeforePrint
        object DBText1: TDBText
          Left = 3
          Top = 11
          Width = 133
          Height = 17
          Alignment = taCenter
          DataField = 'CODIGO'
          DataSource = DataSource1
          Transparent = False
        end
        object DBText3: TDBText
          Left = 274
          Top = 11
          Width = 133
          Height = 17
          Alignment = taCenter
          DataField = 'INICIAL'
          DataSource = DataSource1
          Transparent = False
        end
        object DBText4: TDBText
          Left = 412
          Top = 11
          Width = 133
          Height = 17
          Alignment = taCenter
          DataField = 'FINAL'
          DataSource = DataSource1
          Transparent = False
        end
        object RLLabel7: TRLLabel
          Left = 3
          Top = 36
          Width = 46
          Height = 15
          Caption = 'Motivo: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 55
          Top = 36
          Width = 660
          Height = 15
          Behavior = [beSiteExpander]
          DataField = 'MOTIVO'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel9: TRLLabel
          Left = 549
          Top = 14
          Width = 166
          Height = 15
          Alignment = taCenter
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 84
        Width = 718
        Height = 32
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand5BeforePrint
        object RLLabel3: TRLLabel
          Left = 478
          Top = 6
          Width = 34
          Height = 15
          Alignment = taRightJustify
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel11: TRLLabel
          Left = 549
          Top = 6
          Width = 166
          Height = 15
          Alignment = taCenter
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object FDQuery1: TFDQuery
    Connection = Frm_Principal.FDConnection1
    SQL.Strings = (
      
        'SELECT h.codigo, f.nome funcionario, h.inicial, h.final, h.motiv' +
        'o, f.codigo codfuncionario'
      'from horas_extras h '
      
        'left outer join funcionarios f on (f.codigo = h.cod_funcionario)' +
        ' ')
    Left = 608
    Top = 56
    object FDQuery1CODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object FDQuery1funcionario: TStringField
      FieldName = 'funcionario'
      ReadOnly = True
      Size = 50
    end
    object FDQuery1INICIAL: TSQLTimeStampField
      FieldName = 'INICIAL'
    end
    object FDQuery1FINAL: TSQLTimeStampField
      FieldName = 'FINAL'
    end
    object FDQuery1MOTIVO: TWideMemoField
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      BlobType = ftWideMemo
    end
    object FDQuery1codfuncionario: TIntegerField
      FieldName = 'codfuncionario'
      ReadOnly = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 664
    Top = 56
  end
end
