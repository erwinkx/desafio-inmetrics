module Inmetrics
  class Pages
    def login
      Inmetrics::Login::Login.new
    end
    def funcionarios
        Inmetrics::Funcionarios::Funcionarios.new
    end
    def cadastro
        Inmetrics::Cadastro::Cadastro.new
    end
  end
end
