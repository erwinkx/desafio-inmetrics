module Inmetrics
    module Login
      class Login < SitePrism::Page
        set_url INMETRICS_CONFIG['urls']['inmetrics']
        element :inpt_nome_usuario, 'div:nth-child(5) > input'
        element :inpt_senha, 'div:nth-child(7) > input'
        element :btn_entrar, '.login100-form-btn'
        element :div_alerta_usuario_invalido, '.alert-dismissible'
        element :a_cadastre_se, '.bo1'
      end
    end
  end
