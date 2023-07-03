unit Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, dataModule, Vcl.StdCtrls, FireDAC.Phys.FBDef,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Vcl.Mask, uFormat,
  REST.Types, REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TInicio = class(TForm)
    DataSourceCLIENTES: TDataSource;
    Panel1: TPanel;
    BtnIncluir: TButton;
    BtnEditar: TButton;
    BtnGravar: TButton;
    BtnExcluir: TButton;
    BtnCancelar: TButton;
    Nome: TLabel;
    lblPessoa: TLabel;
    Fone: TLabel;
    Observação: TLabel;
    Label1: TLabel;
    QryCliente: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Conexao: TFDConnection;
    DBEditnID: TDBEdit;
    DBEditPessoa: TDBEdit;
    DBEditNOME: TDBEdit;
    DBEditFONE: TDBEdit;
    DBEditOBS: TDBEdit;
    QryClienteCLI_NOME: TStringField;
    QryClienteCLI_CPF: TLargeintField;
    QryClienteCLI_CNPJ: TLargeintField;
    QryClienteCLI_SITUACAO: TBooleanField;
    QryClienteCLI_OBS: TStringField;
    QryClienteCLI_FONE: TLargeintField;
    QryClienteCLI_PAIS: TStringField;
    QryClienteCLI_ESTADO: TStringField;
    QryClienteCLI_CIDADE: TStringField;
    QryClienteCLI_RUA: TStringField;
    QryClienteCLI_NR: TIntegerField;
    QryClienteCLI_ID: TIntegerField;
    QryClienteCLI_CEP: TLargeintField;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    QryClienteCLI_IBGE: TStringField;
    Panel2: TPanel;
    CheckBoxFisica: TCheckBox;
    CheckBoxjuridica: TCheckBox;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Pais: TLabel;
    Rua: TLabel;
    Endereço: TLabel;
    Estado: TLabel;
    Cidade: TLabel;
    Nº: TLabel;
    DBEditPAIS: TDBEdit;
    DBEditESTADO: TDBEdit;
    DBEditCIDADE: TDBEdit;
    DBEditRUA: TDBEdit;
    DBEditNR: TDBEdit;
    DBEditCep: TDBEdit;
    ButtonCONSULTA: TButton;
    Label2: TLabel;
    DBEditIBGE: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    QryClienteCLI_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure ButtonCONSULTAClick(Sender: TObject);
    procedure CheckBoxFisicaClick(Sender: TObject);
    procedure CheckBoxjuridicaClick(Sender: TObject);
    procedure QryClienteNewRecord(DataSet: TDataSet);
    procedure QryClienteBeforePost(DataSet: TDataSet);

  private
    { Private declarations }
    procedure inativaCampos;
    procedure ativaCampos;
    procedure inativaBotoes;
    procedure ativaBotoes;
    procedure Juridica;
    procedure fisica;
    procedure ativaBotoesEditar;
  public
    { Public declarations }
    procedure consultaCep;
  end;

var
  Inicio: TInicio;

implementation

{$R *.dfm}

procedure TInicio.ativaBotoes;
// procedure que ativa os campos do form principal
begin

  BtnEditar.Enabled := true;
  BtnExcluir.Enabled := true;
  BtnIncluir.Enabled := true;
  BtnGravar.Enabled := false;
  BtnCancelar.Enabled := false;

end;


procedure TInicio.ativaBotoesEditar;
// procedure que ativa os campos do form principal em edição
begin

  BtnEditar.Enabled := true;
  BtnExcluir.Enabled := false;
  BtnIncluir.Enabled := false;
  BtnGravar.Enabled := true;
  BtnCancelar.Enabled := true;

end;

procedure TInicio.ativaCampos; // função que inativa os campos do form principal
begin

  DBEditNOME.Enabled := true;
  DBEditPessoa.Enabled := true;
  DBEditFONE.Enabled := true;
  DBEditOBS.Enabled := true;
  DBEditESTADO.Enabled := true;
  DBEditCIDADE.Enabled := true;
  DBEditRUA.Enabled := true;
  DBEditNR.Enabled := true;
  DBEditPAIS.Enabled := true;
  DBCheckBox1.Enabled := true;
  DBEditCep.Enabled := true;
  DBEditIBGE.Enabled := true;
  BtnCancelar.Enabled := true;
  ButtonCONSULTA.Enabled:= true;
  CheckBoxFisica.Enabled:= true;
  CheckBoxjuridica.Enabled:= true;

end;

procedure TInicio.BtnCancelarClick(Sender: TObject); // botão cancelar
begin

  QryCliente.Cancel;
  inativaCampos;
  ativaBotoes;

end;

procedure TInicio.BtnEditarClick(Sender: TObject); // botão editar
begin

  QryCliente.Edit;
  ativaBotoesEditar;
  ativaCampos;
  DBEditNOME.SetFocus;

end;

procedure TInicio.BtnExcluirClick(Sender: TObject);
// botão excluir e tratamento de informação com confirmaçãod de exclusão.
begin

  if (Application.MessageBox('Deseja realmente excluir esse registro?',
    'Confirmação', MB_USEGLYPHCHARS) = mrYes) then
  begin

    QryCliente.Delete;
    ShowMessage('Registro excluido com sucesso!');
    inativaCampos;
    ativaBotoes;
  end;

end;

procedure TInicio.BtnGravarClick(Sender: TObject); // botão gravar
begin

  QryCliente.Post;
  Conexao.Commit;
  inativaCampos;
  ShowMessage('Registro salvo com sucesso!');
  ativaBotoes;

end;

procedure TInicio.BtnIncluirClick(Sender: TObject); // botão incluir
begin

  QryCliente.Insert;
  ativaCampos;
  DBEditNOME.SetFocus;
  inativaBotoes;
  DBCheckBox1.Checked:= false;

end;

procedure TInicio.ButtonCONSULTAClick(Sender: TObject);
// botão de consulta chamando a procedure para consultar o cep.
begin

  consultaCep;

end;

procedure TInicio.CheckBoxFisicaClick(Sender: TObject);
// checkbox pessoa fisica chamando a procedure para alterar o datafield e o label
begin

  fisica;

end;

procedure TInicio.CheckBoxjuridicaClick(Sender: TObject);
// check box de pessoa juridica chamando a  procedure para alterar o datafield e o nome do label.
begin

  Juridica;

end;

procedure TInicio.consultaCep;
// requisição do cep para o end point e consumo dos dados.
begin

  if SomenteNumero(DBEditCep.text).Length <> 8 then
  begin

    ShowMessage('CEP inválido');
    exit;
  end;

  RESTRequest1.Resource := SomenteNumero(DBEditCep.text) + '/json';
  // passa o cep ja formatado para a requisição
  RESTRequest1.Execute; // executa a requisição

  if RESTRequest1.Response.StatusCode = 200 then
  begin

    if RESTRequest1.Response.Content.IndexOf('erro') > 1 then
    // tratamento de erro caso o jason retorne "erro"
    begin

      ShowMessage('CEP não encontrado');

    end
    else
    begin // consumo do json

      with FDMemTable1 do
      begin

        DBEditESTADO.text := FieldByName('uf').AsString;
        DBEditPAIS.text := 'BRASIL';
        DBEditCIDADE.text := FieldByName('localidade').AsString;
        DBEditRUA.text := FieldByName('logradouro').AsString;
        DBEditIBGE.text := FieldByName('ibge').AsString;

      end;

    end;

  end
  else
  begin // tratamento de erro caso o cep não retorne informação.
    ShowMessage('Erro ao consultar o CEP');
  end;

end;

procedure TInicio.fisica; // Altera o campo CNPJ para CPF.
begin

  if CheckBoxFisica.Checked = true then
  begin

    CheckBoxjuridica.Checked := false;
    lblPessoa.Caption := 'CPF';
    DBEditPessoa.DataField := 'CLI_CPF';

  end;

end;

procedure TInicio.Juridica; // Altera o campo CPF para CNPJ.
begin

  if CheckBoxjuridica.Checked = true then
  begin

    CheckBoxFisica.Checked := false;
    lblPessoa.Caption := 'CNPJ';
    DBEditPessoa.DataField := 'CLI_CNPJ';

  end;

end;

procedure TInicio.QryClienteBeforePost(DataSet: TDataSet);  //deixar o codigo positivo para o usuário
begin
  if DBCheckBox1.Checked then
    QryCliente.FieldByName('CLI_SITUACAO').AsBoolean := true
  Else
    QryCliente.FieldByName('CLI_SITUACAO').AsBoolean := false;
end;

procedure TInicio.QryClienteNewRecord(DataSet: TDataSet);
begin
  QryCliente.FieldByName('CLI_ID').AsInteger := QryCliente.FieldByName('CLI_ID')
    .AsInteger * -1;
end;

procedure TInicio.FormCreate(Sender: TObject); // criação do form principal
begin

  Conexao.Connected := true;
  QryCliente.Open();
  inativaCampos;
  ativaBotoes;

end;

procedure TInicio.inativaBotoes; // intativa os Botões do CRUD.
begin

  BtnCancelar.Enabled := true;
  BtnEditar.Enabled := false;
  BtnExcluir.Enabled := false;
  BtnIncluir.Enabled := false;
  BtnGravar.Enabled := true;

end;

procedure TInicio.inativaCampos; // inativa os campos do form principal.
begin

  DBEditNOME.Enabled := false;
  DBEditPessoa.Enabled := false;
  DBEditFONE.Enabled := false;
  DBEditOBS.Enabled := false;
  DBEditESTADO.Enabled := false;
  DBEditCIDADE.Enabled := false;
  DBEditRUA.Enabled := false;
  DBEditNR.Enabled := false;
  DBEditPAIS.Enabled := false;
  DBEditIBGE.Enabled := false;
  DBEditCep.Enabled := false;
  CheckBoxFisica.Enabled := false;
  CheckBoxjuridica.Enabled := false;
  DBCheckBox1.Enabled := false;
  ButtonCONSULTA.Enabled := false;

end;

end.
