object Inicio: TInicio
  Left = 0
  Top = 0
  Caption = 'Inicio'
  ClientHeight = 551
  ClientWidth = 750
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Nome: TLabel
    Left = 7
    Top = 88
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object lblPessoa: TLabel
    Left = 7
    Top = 117
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Fone: TLabel
    Left = 7
    Top = 149
    Width = 26
    Height = 15
    Caption = 'Fone'
  end
  object Observação: TLabel
    Left = 7
    Top = 181
    Width = 21
    Height = 15
    Caption = 'Obs'
  end
  object Label1: TLabel
    Left = 7
    Top = 61
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 57
    Align = alTop
    Color = clHighlight
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 746
    object BtnIncluir: TButton
      Left = 6
      Top = 13
      Width = 105
      Height = 33
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = BtnIncluirClick
    end
    object BtnEditar: TButton
      Left = 117
      Top = 13
      Width = 105
      Height = 33
      Caption = 'Editar'
      TabOrder = 1
      OnClick = BtnEditarClick
    end
    object BtnGravar: TButton
      Left = 228
      Top = 13
      Width = 105
      Height = 33
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = BtnGravarClick
    end
    object BtnExcluir: TButton
      Left = 339
      Top = 13
      Width = 105
      Height = 33
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = BtnExcluirClick
    end
    object BtnCancelar: TButton
      Left = 450
      Top = 13
      Width = 105
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = BtnCancelarClick
    end
  end
  object DBEditnID: TDBEdit
    Left = 48
    Top = 58
    Width = 41
    Height = 23
    DataField = 'CLI_ID'
    DataSource = DataSourceCLIENTES
    Enabled = False
    TabOrder = 1
  end
  object DBEditNOME: TDBEdit
    Left = 48
    Top = 85
    Width = 385
    Height = 23
    DataField = 'CLI_NOME'
    DataSource = DataSourceCLIENTES
    TabOrder = 2
  end
  object DBEditPessoa: TDBEdit
    Left = 48
    Top = 114
    Width = 128
    Height = 23
    DataField = 'CLI_CPF'
    DataSource = DataSourceCLIENTES
    TabOrder = 3
  end
  object DBEditFONE: TDBEdit
    Left = 48
    Top = 146
    Width = 128
    Height = 23
    DataField = 'CLI_FONE'
    DataSource = DataSourceCLIENTES
    TabOrder = 4
  end
  object DBEditOBS: TDBEdit
    Left = 48
    Top = 175
    Width = 217
    Height = 23
    DataField = 'CLI_OBS'
    DataSource = DataSourceCLIENTES
    TabOrder = 5
  end
  object Panel2: TPanel
    Left = 435
    Top = 63
    Width = 315
    Height = 45
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 6
    object Label3: TLabel
      Left = 35
      Top = 11
      Width = 81
      Height = 20
      Caption = 'Tipo Pessoa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object CheckBoxFisica: TCheckBox
      Left = 219
      Top = 13
      Width = 61
      Height = 17
      Caption = 'F'#237'sica'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBoxFisicaClick
    end
    object CheckBoxjuridica: TCheckBox
      Left = 135
      Top = 13
      Width = 78
      Height = 17
      Caption = 'Jur'#237'dica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBoxjuridicaClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 375
    Width = 750
    Height = 176
    Align = alBottom
    Ctl3D = True
    DataSource = DataSourceCLIENTES
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClI_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_PAIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ESTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClI_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_PAIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ESTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_IBGE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClI_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_OBS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_PAIS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_ESTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_IBGE'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 198
    Width = 748
    Height = 177
    Color = clInactiveCaption
    ParentBackground = False
    TabOrder = 8
    object Pais: TLabel
      Left = 5
      Top = 28
      Width = 21
      Height = 15
      Caption = 'Pa'#237's'
    end
    object Rua: TLabel
      Left = 6
      Top = 89
      Width = 20
      Height = 15
      Caption = 'Rua'
    end
    object Endereço: TLabel
      Left = 5
      Top = 2
      Width = 64
      Height = 21
      Caption = 'Endere'#231'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Estado: TLabel
      Left = 5
      Top = 59
      Width = 35
      Height = 15
      Caption = 'Estado'
    end
    object Cidade: TLabel
      Left = 4
      Top = 119
      Width = 37
      Height = 15
      Caption = 'Cidade'
    end
    object Nº: TLabel
      Left = 182
      Top = 28
      Width = 14
      Height = 15
      Caption = 'N'#186
    end
    object Label2: TLabel
      Left = 5
      Top = 148
      Width = 24
      Height = 15
      Caption = 'IBGE'
    end
    object DBEditPAIS: TDBEdit
      Left = 46
      Top = 25
      Width = 128
      Height = 23
      DataField = 'CLI_PAIS'
      DataSource = DataSourceCLIENTES
      TabOrder = 0
    end
    object DBEditESTADO: TDBEdit
      Left = 46
      Top = 56
      Width = 285
      Height = 23
      DataField = 'CLI_ESTADO'
      DataSource = DataSourceCLIENTES
      TabOrder = 1
    end
    object DBEditCIDADE: TDBEdit
      Left = 46
      Top = 116
      Width = 285
      Height = 23
      DataField = 'CLI_CIDADE'
      DataSource = DataSourceCLIENTES
      TabOrder = 2
    end
    object DBEditRUA: TDBEdit
      Left = 46
      Top = 86
      Width = 285
      Height = 23
      DataField = 'CLI_RUA'
      DataSource = DataSourceCLIENTES
      TabOrder = 3
    end
    object DBEditNR: TDBEdit
      Left = 203
      Top = 25
      Width = 128
      Height = 23
      DataField = 'CLI_NR'
      DataSource = DataSourceCLIENTES
      TabOrder = 4
    end
    object DBEditCep: TDBEdit
      Left = 458
      Top = 38
      Width = 121
      Height = 23
      DataField = 'CLI_CEP'
      DataSource = DataSourceCLIENTES
      TabOrder = 5
    end
    object ButtonCONSULTA: TButton
      Left = 458
      Top = 67
      Width = 121
      Height = 25
      Caption = 'Consultar'
      TabOrder = 6
      OnClick = ButtonCONSULTAClick
    end
    object DBEditIBGE: TDBEdit
      Left = 46
      Top = 145
      Width = 285
      Height = 23
      DataField = 'CLI_IBGE'
      DataSource = DataSourceCLIENTES
      TabOrder = 7
    end
  end
  object DBCheckBox1: TDBCheckBox
    Left = 95
    Top = 59
    Width = 74
    Height = 20
    Caption = 'Ativo'
    Ctl3D = True
    DataField = 'CLI_SITUACAO'
    DataSource = DataSourceCLIENTES
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
  end
  object DataSourceCLIENTES: TDataSource
    DataSet = QryCliente
    Left = 584
    Top = 168
  end
  object QryCliente: TFDQuery
    BeforePost = QryClienteBeforePost
    OnNewRecord = QryClienteNewRecord
    AggregatesActive = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      'CLIENTES.CLI_CODIGO,'
      'CLIENTES.CLI_NOME,'
      'CLIENTES.CLI_CPF,'
      'CLIENTES.CLI_CNPJ,'
      'CLIENTES.CLI_OBS,'
      'CLIENTES.CLI_SITUACAO,'
      'CLIENTES.CLI_FONE,'
      'CLIENTES.CLI_PAIS,'
      'CLIENTES.CLI_ESTADO,'
      'CLIENTES.CLI_CIDADE,'
      'CLIENTES.CLI_RUA,'
      'CLIENTES.CLI_NR,'
      'CLIENTES.CLI_CEP,'
      'CLIENTES.CLI_IBGE,'
      'CLIENTES.CLI_ID'
      'FROM CLIENTES; '
      '')
    Left = 680
    Top = 168
    object QryClienteCLI_ID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CLI_ID'
      Origin = 'CLI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryClienteCLI_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLI_NOME'
      Origin = 'CLI_NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object QryClienteCLI_CPF: TLargeintField
      DisplayLabel = 'CPF'
      FieldName = 'CLI_CPF'
      Origin = 'CLI_CPF'
      EditFormat = '###.###.###-##'
    end
    object QryClienteCLI_CNPJ: TLargeintField
      DisplayLabel = 'CNPJ'
      FieldName = 'ClI_CNPJ'
      Origin = 'CLI_CNPJ'
    end
    object QryClienteCLI_SITUACAO: TBooleanField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'CLI_SITUACAO'
      Origin = 'CLI_SITUACAO'
    end
    object QryClienteCLI_OBS: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'CLI_OBS'
      Origin = 'CLI_OBS'
      FixedChar = True
      Size = 70
    end
    object QryClienteCLI_FONE: TLargeintField
      DisplayLabel = 'Fone'
      FieldName = 'CLI_FONE'
      Origin = 'CLI_FONE'
    end
    object QryClienteCLI_PAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      FieldName = 'CLI_PAIS'
      Origin = 'CLI_PAIS'
      FixedChar = True
    end
    object QryClienteCLI_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'CLI_ESTADO'
      Origin = 'CLI_ESTADO'
      FixedChar = True
    end
    object QryClienteCLI_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CIDADE'
      Origin = 'CLI_CIDADE'
      Required = True
      FixedChar = True
      Size = 25
    end
    object QryClienteCLI_RUA: TStringField
      DisplayLabel = 'Rua'
      FieldName = 'CLI_RUA'
      Origin = 'CLI_RUA'
      Required = True
      FixedChar = True
      Size = 25
    end
    object QryClienteCLI_NR: TIntegerField
      DisplayLabel = 'N'#176' im'#243'vel'
      FieldName = 'CLI_NR'
      Origin = 'CLI_NR'
      Required = True
    end
    object QryClienteCLI_CEP: TLargeintField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      Origin = 'CLI_CEP'
    end
    object QryClienteCLI_IBGE: TStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'CLI_IBGE'
      Origin = 'CLI_IBGE'
      Size = 7
    end
    object QryClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'CLI_CODIGO'
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_3_0\fbclient.dll'
    Left = 680
    Top = 104
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\CADASTRO_PESSOAS\DADOS\CLIENTES.FDB'
      'User_Name=SYSDBA'
      'Password=1234'
      'Protocol=TCPIP'
      'Port=3050'
      'DriverID=FB30')
    Connected = True
    Left = 584
    Top = 104
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://viacep.com.br/ws'
    Params = <>
    SynchronizedEvents = False
    Left = 584
    Top = 224
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Resource = '94185210/json/'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 680
    Top = 224
  end
  object RESTResponse1: TRESTResponse
    Left = 680
    Top = 272
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    TypesMode = Rich
    Left = 680
    Top = 320
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
    Left = 680
    Top = 376
  end
end
