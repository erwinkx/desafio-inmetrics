Dado('acessar a página inicial da InMetrics') do
  $inmetrics_pages.login.load
end

E('adicionar novo funcionário na InMetrics') do
  step 'validar que a sessão é estabelecida com "sucesso" na InMetrics'
  $inmetrics_pages.funcionarios.a_novo_funcionario.click
  @nome_funcionario = Faker::Name.first_name
  @cargo_funcionario = Faker::Job.title
  @cpf_funcionario = DocumentosBr.cpf_formatado
  @salario_funcionario = Faker::Number.number(digits: 6)
  $inmetrics_pages.funcionarios.slct_novo_funcionario_sexo.click
  sleep 2
  $inmetrics_pages.funcionarios.slct_novo_funcionario_sexo.all('option').sample.click
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_nome.set @nome_funcionario
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_cargo.set @cargo_funcionario
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_cpf.set @cpf_funcionario
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_salario.set @salario_funcionario
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_admissao.set '19/08/2020'
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_tipo_clt.click
  $inmetrics_pages.funcionarios.btn_enviar.click
end

E('validar que o funcionário é cadastrado com sucesso na InMetrics') do
  expect($inmetrics_pages.funcionarios.div_cadastro_sucesso.text).to have_content(buscar_na_massa(%w[cadastro funcionario_sucesso]))
end

Então('atualizar as informações do funcionário') do
  step 'adicionar novo funcionário na InMetrics'
  step 'validar que o funcionário é cadastrado com sucesso na InMetrics'
  $inmetrics_pages.funcionarios.inpt_buscar_funcionario.set @nome_funcionario
  sleep 2
  $inmetrics_pages.funcionarios.btn_editar_funcionario.click
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_cargo.set Faker::Job.title
  $inmetrics_pages.funcionarios.inpt_novo_funcionario_salario.set Faker::Number.number(digits: 8)
  $inmetrics_pages.funcionarios.btn_enviar.click
end

E('validar que as informações foram atualizadas com sucesso na InMetrics') do
  expect($inmetrics_pages.funcionarios.div_cadastro_sucesso.text).to have_content(buscar_na_massa(%w[cadastro funcionario_edicao]))
end

E('excluir um funcionário da Aplicação') do
  step 'adicionar novo funcionário na InMetrics'
  step 'validar que o funcionário é cadastrado com sucesso na InMetrics'
  $inmetrics_pages.funcionarios.inpt_buscar_funcionario.set @nome_funcionario
  sleep 2
  $inmetrics_pages.funcionarios.btn_excluir_funcionario.click
end

Então('validar que o funcionário foi excluído com sucesso na InMetrics') do
  expect($inmetrics_pages.funcionarios.div_cadastro_sucesso.text).to have_content(buscar_na_massa(%w[cadastro funcionario_deletado]))
end