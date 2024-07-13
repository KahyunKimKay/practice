object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 519
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Edit1: TEdit
    Left = 256
    Top = 136
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 256
    Top = 193
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 272
    Top = 261
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 272
    Top = 293
    Width = 121
    Height = 23
    TabOrder = 3
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 264
    Top = 344
    Width = 121
    Height = 23
    TabOrder = 4
    Text = 'Edit5'
  end
  object Edit6: TEdit
    Left = 264
    Top = 392
    Width = 121
    Height = 23
    TabOrder = 5
    Text = 'Edit6'
  end
  object Button1: TButton
    Left = 440
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 608
    Top = 80
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 960
    Top = 232
    Width = 75
    Height = 25
    Caption = #52628#44032
    TabOrder = 8
  end
  object Button3: TButton
    Left = 960
    Top = 263
    Width = 75
    Height = 25
    Caption = #49688#51221
    TabOrder = 9
  end
  object Button4: TButton
    Left = 960
    Top = 294
    Width = 75
    Height = 25
    Caption = #49325#51228
    TabOrder = 10
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 960
    Top = 325
    Width = 75
    Height = 25
    Caption = #44160#49353
    TabOrder = 11
    OnClick = Button5Click
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://43.201.19.8:8000'
    Params = <>
    SynchronizedEvents = False
    Left = 632
    Top = 400
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 480
    Top = 400
  end
  object RESTResponse1: TRESTResponse
    Left = 632
    Top = 288
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 480
    Top = 288
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    Left = 632
    Top = 344
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 480
    Top = 344
  end
end
