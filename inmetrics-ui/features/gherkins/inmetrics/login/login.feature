# language:pt

@inmetrics
@fluxo_login_inmetrics
Funcionalidade: Login - Validar login na Aplicação de Gerenciamento de Funcionários
  Como um usuário do sistema
  Quero realizar login na Aplicação de Gerenciamento de Funcionários
  Para administrar os Funcionários da InMetrics

  @login_inmetrics
  Esquema do Cenário: Validar login na Aplicação de Gerenciamento de Funcionários
    Dado acessar a página inicial da InMetrics
    Quando realizar login na página da InMetrics
      | usuario | <usuario> |
    Então validar que a sessão é estabelecida com '<tipo>' na InMetrics

    Exemplos:
      | usuario          | tipo    |
      | usuario_invalido | falha   |
      | usuario_admin    | sucesso |