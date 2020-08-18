module Inmetrics
    module Funcionarios
      class Funcionarios < SitePrism::Page
        element :div_tabela_funcionarios, '#tabela_wrapper'
        element :a_novo_funcionario, '#navbarSupportedContent > ul > li:nth-child(2) > a'
        element :inpt_novo_funcionario_nome, '#inputNome'
        element :inpt_novo_funcionario_cargo, '#inputCargo'
        element :inpt_novo_funcionario_cpf, '#cpf'
        element :inpt_novo_funcionario_admissao, '#inputAdmissao'
        element :inpt_novo_funcionario_salario, '#dinheiro'
        element :inpt_novo_funcionario_tipo_clt, '#clt'
        element :inpt_buscar_funcionario, '#tabela_filter > label > input[type=search]'
        element :slct_novo_funcionario_sexo, '#slctSexo'
        element :btn_enviar, '.cadastrar-form-btn'
        element :div_cadastro_sucesso, '.alert-success'
        element :btn_editar_funcionario, '.btn-warning'
        element :btn_excluir_funcionario, '#delete-btn'
      end
    end
  end