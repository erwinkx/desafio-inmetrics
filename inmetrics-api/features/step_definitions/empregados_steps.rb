Dado('ter informações de novo empregado para cadastrar via API') do
  @empregado = {
    "admissao": "19/08/2020",
    "cargo": "Engenheiro de QA",
    "comissao": "1.000,00",
    "cpf": DocumentosBr.cpf_formatado,
    "departamentoId": rand(0...10),
    "nome": Faker::Name.first_name,
    "salario": "7.000,00",
    "sexo": "m",
    "tipoContratacao": "clt"
  }
end

Quando('cadastrar novo empregado na API via metódo POST') do
  endpoint = "#{CONFIG['inmetrics']['api']}#{CONFIG['inmetrics']['post']}"
  @result = post(endpoint, @empregado)
  @empregado_id = @result['empregadoId']
end

Então('validar que o empregado foi cadastrado com sucesso via API') do
  expect(@result.response.code).to eql '202'
  expect(@result['empregadoId']).not_to be_nil
  expect(@result['nome']).to eql @empregado[:nome]
  expect(@result['cargo']).to eql @empregado[:cargo]
  expect(@result['comissao']).to eql @empregado[:comissao]
  expect(@result['cpf']).to eql @empregado[:cpf]
  expect(@result['salario']).to eql @empregado[:salario]
  expect(@result['sexo']).to eql @empregado[:sexo]
  expect(@result['tipoContratacao']).to eql @empregado[:tipoContratacao]
  expect(@result['admissao']).to eql @empregado[:admissao]
end

E('excluir o empregado na API via metódo DELETE') do
  endpoint = "#{CONFIG['inmetrics']['api']}#{CONFIG['inmetrics']['delete']}#{@empregado_id}"
  @result = delete(endpoint)
end

E('validar que o empregado foi excluído com sucesso') do
  step 'listar empregado na API pelo metódo GET'
  expect(@result.response.code).to eql '202'
  expect(@result.response.body).to eql "Deletado"
end

E('listar empregado na API pelo metódo GET') do
  endpoint = "#{CONFIG['inmetrics']['api']}#{CONFIG['inmetrics']['get']}#{@empregado_id}"
  result = get(endpoint)
end

E('editar as informações do empregado na API via metódo PUT') do
  @empregado_put = {
    "admissao": "28/12/2021",
    "cargo": "Engenheiro de QA Senior",
    "comissao": "2.000,00",
    "cpf": DocumentosBr.cpf_formatado,
    "departamentoId": rand(0...10),
    "nome": Faker::Name.first_name,
    "salario": "9.000,00",
    "sexo": "m",
    "tipoContratacao": "clt"
  }
  endpoint = "#{CONFIG['inmetrics']['api']}#{CONFIG['inmetrics']['put']}#{@empregado_id}"
  @result = put(endpoint, @empregado_put)
end

Então('validar que o empregado foi alterado com sucesso via API') do
  expect(@result.response.code).to eql '202'
  expect(@result['empregadoId']).not_to be_nil
  expect(@result['nome']).to eql @empregado_put[:nome]
  expect(@result['cargo']).to eql @empregado_put[:cargo]
  expect(@result['comissao']).to eql @empregado_put[:comissao]
  expect(@result['cpf']).to eql @empregado_put[:cpf]
  expect(@result['salario']).to eql @empregado_put[:salario]
  expect(@result['sexo']).to eql @empregado_put[:sexo]
  expect(@result['tipoContratacao']).to eql @empregado_put[:tipoContratacao]
  expect(@result['admissao']).to eql @empregado_put[:admissao]
end

E('listar todos os empregados na API pelo metódo GET') do
  endpoint = "#{CONFIG['inmetrics']['api']}#{CONFIG['inmetrics']['get_all']}"
  result = get(endpoint)
  expect(@result.response.body).not_to be_nil
  expect(@result.response.code).to eql '202'
end