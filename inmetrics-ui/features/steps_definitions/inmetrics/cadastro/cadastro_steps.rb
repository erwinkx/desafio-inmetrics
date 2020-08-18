Quando('realizar o cadastro na página da InMetrics') do |dados|
  $inmetrics_pages.login.a_cadastre_se.click
  if dados.rows_hash['usuario'].eql?('usuario_existente')
    $inmetrics_pages.cadastro.inpt_nome_usuario.set buscar_na_massa(%W[usuarios usuario_admin login])
    $inmetrics_pages.cadastro.inpt_senha.set buscar_na_massa(%W[usuarios usuario_admin senha])
    $inmetrics_pages.cadastro.inpt_confirmar_senha.set buscar_na_massa(%W[usuarios usuario_admin senha])
    $inmetrics_pages.cadastro.btn_cadastrar.click
  else
    @nome_usuario_novo = Faker::Internet.username(specifier: 8)
    @senha_usuario_novo = Faker::Number.number(digits: 6)
    $inmetrics_pages.cadastro.inpt_nome_usuario.set @nome_usuario_novo
    $inmetrics_pages.cadastro.inpt_senha.set @senha_usuario_novo
    $inmetrics_pages.cadastro.inpt_confirmar_senha.set @senha_usuario_novo
    $inmetrics_pages.cadastro.btn_cadastrar.click
  end
end

Entao('validar que o cadastro é efetuado com {string} na InMetrics') do |tipo|
  tipo.eql?('sucesso') ? (expect($inmetrics_pages.login).to have_btn_entrar) : (expect($inmetrics_pages.cadastro.div_alerta_usuario_cadastrado.text).to have_content(buscar_na_massa(%w[cadastro usuario_existente])))
end