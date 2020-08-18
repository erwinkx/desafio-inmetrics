# language:pt

@inmetrics
@fluxo_funcionario_inmetrics
Funcionalidade: Funcionários - Validar gerenciamento de funcionários atráves da Aplicação
  Como um usuário do sistema
  Quero realizar a manutenção de funcionários na Aplicação de Gerenciamento de Funcionários
  Para administrar os Funcionários da InMetrics

  @cadastro_funcionario_inmetrics
  Cenário: Validar cadastro de Funcionário na Aplicação de Gerenciamento de Funcionários
    Dado acessar a página inicial da InMetrics
    Quando realizar login na página da InMetrics
      | usuario | usuario_admin |
    E adicionar novo funcionário na InMetrics
    Então validar que o funcionário é cadastrado com sucesso na InMetrics

  @editar_funcionario_inmetrics
  Cenário: Validar alteração de Funcionário na Aplicação de Gerenciamento de Funcionários
    Dado acessar a página inicial da InMetrics
    Quando realizar login na página da InMetrics
      | usuario | usuario_admin |
    E atualizar as informações do funcionário
    Então validar que as informações foram atualizadas com sucesso na InMetrics

  @excluir_funcionario_inmetrics
  Cenário: Validar exclusão de Funcionário na Aplicação de Gerenciamento de Funcionários
    Dado acessar a página inicial da InMetrics
    Quando realizar login na página da InMetrics
      | usuario | usuario_admin |
    E excluir um funcionário da Aplicação
    Então validar que o funcionário foi excluído com sucesso na InMetrics