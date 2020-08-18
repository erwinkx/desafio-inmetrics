Quando('realizar login na página da InMetrics') do |dados|
  $inmetrics_pages.login.inpt_nome_usuario.set buscar_na_massa(%W[usuarios #{dados.rows_hash['usuario']} login])
  $inmetrics_pages.login.inpt_senha.set buscar_na_massa(%W[usuarios #{dados.rows_hash['usuario']} senha])
  $inmetrics_pages.login.btn_entrar.click
end

Entao('validar que a sessão é estabelecida com {string} na InMetrics') do |tipo|
  tipo.eql?('sucesso') ? (expect($inmetrics_pages.funcionarios).to have_div_tabela_funcionarios) : (expect($inmetrics_pages.login.div_alerta_usuario_invalido.text).to have_content(buscar_na_massa(%w[login mensagem_falha])))
end