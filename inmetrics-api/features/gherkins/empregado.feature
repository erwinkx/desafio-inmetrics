# language:pt

@inmetrics
@fluxo_empregado_inmetrics
Funcionalidade: Empregados - Validar gerenciamento de funcionários atráves da API
  Como um usuário do sistema
  Quero realizar a manutenção de Empregados via API
  Para administrar os Empregados da InMetrics

  @cadastro_empregado_inmetrics
  Cenário: Validar cadastro de Empregado na API via POST
    Dado ter informações de novo empregado para cadastrar via API
    Quando cadastrar novo empregado na API via metódo POST
    Então validar que o empregado foi cadastrado com sucesso via API

  @editar_empregado_inmetrics
  Cenário: Validar alteração de Empregado na API via PUT
    Dado ter informações de novo empregado para cadastrar via API
    Quando cadastrar novo empregado na API via metódo POST
    E validar que o empregado foi cadastrado com sucesso via API
    Então editar as informações do empregado na API via metódo PUT
    E validar que o empregado foi alterado com sucesso via API

  @excluir_empregado_inmetrics
  Cenário: Validar exclusão de Empregado na API via DELETE
    Dado ter informações de novo empregado para cadastrar via API
    Quando cadastrar novo empregado na API via metódo POST
    E validar que o empregado foi cadastrado com sucesso via API
    Então excluir o empregado na API via metódo DELETE
    E validar que o empregado foi excluído com sucesso

  @listar_empregado_inmetrics
  Cenário: Validar listagem de Empregado na API via GET
    Dado ter informações de novo empregado para cadastrar via API
    Quando cadastrar novo empregado na API via metódo POST
    E validar que o empregado foi cadastrado com sucesso via API
    Então listar empregado na API pelo metódo GET

  @listar_todos_empregados_inmetrics
  Cenário: Validar listagem de todos os Empregados na API via GET
    Dado ter informações de novo empregado para cadastrar via API
    Quando cadastrar novo empregado na API via metódo POST
    E validar que o empregado foi cadastrado com sucesso via API
    Então listar empregado na API pelo metódo GET
    E listar todos os empregados na API pelo metódo GET