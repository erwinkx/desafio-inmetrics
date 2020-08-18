# language:pt

@inmetrics
@fluxo_cadastro_inmetrics
Funcionalidade: Cadastro - Validar cadastro de usuário na Aplicação de Gerenciamento de Funcionários
  Como um usuário do sistema
  Quero realizar cadastro de usuário na Aplicação de Gerenciamento de Funcionários
  Para administrar os Funcionários da InMetrics

  @cadastro_inmetrics
  Esquema do Cenário: Validar cadastro na Aplicação de Gerenciamento de Funcionários
    Dado acessar a página inicial da InMetrics
    Quando realizar o cadastro na página da InMetrics
      | usuario | <usuario> |
    Então validar que o cadastro é efetuado com '<tipo>' na InMetrics

    Exemplos:
      | usuario           | tipo    |
      | usuario_existente | falha   |
      | usuario_novo      | sucesso |