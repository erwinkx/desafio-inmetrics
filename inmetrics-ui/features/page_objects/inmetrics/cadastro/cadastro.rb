module Inmetrics
    module Cadastro
      class Cadastro < SitePrism::Page
        element :inpt_nome_usuario, 'div:nth-child(4) > input'
        element :inpt_senha, 'div:nth-child(6) > input'
        element :inpt_confirmar_senha, 'div:nth-child(8) > input'
        element :btn_cadastrar, '.login100-form-btn'
        element :div_alerta_usuario_cadastrado, '.p-t-10.p-b-1 > span > div'
      end
    end
  end
