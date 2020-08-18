## Teste Inmetrics

Automação de testes de API, para cadastrar, listar, editar e excluir empregados.
Foi feito o desenvolvimento no macOS Catalina 10.15.6

#### Instalação e configuração do ambiente no macOS:
- Instale o Homebrew atráves do comando, no Terminal do Mac: ``` /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" ```
- Instale o brew install zsh, também no Terminal do Mac: ``` brew install zsh ```
- Instale o curl, da mesma forma que os demais: ``` brew install curl ```
- Instale o Oh My ZSH para deixarmos o Terminal melhor: ``` sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" ```

Agora basta clonar este repositório, entrar na pasta inmetrics-api e no terminal dar o comando: ``` gem install bundler ``` , depois de o comando ``` bundle install ``` para instalar as gemas necessárias
Agora temos todas as gemas que precisamos instaladas, basta dar o comando: ``` cucumber -t @tag_cenario ``` para executarmos os nossos cenários


#### Instalação e configuração do ambiente no Windows 10:
- Instale o cmder:
1) Faça download do pacote FULL no site http://cmder.net/
2) Descompactar na pasta C:\aut\Cmder (crie a pasta)
3) Executar o cmder.exe

- Instale o Ruby com devkit:
a) Fazer download da versão 2.6.x do Ruby (WITH DEVKIT) http://rubyinstaller.org/downloads/
b) Instalar no diretório C:\Ruby24-x64
c) Antes de clicar em Install, você pode marcar todas as opções disponíveis.

Agora basta clonar este repositório, entrar na pasta inmetrics-api e no terminal dar o comando: ``` gem install bundler ``` , depois de o comando ``` bundle install ``` para instalar as gemas necessárias.
Agora temos todas as gemas que precisamos instaladas, basta dar o comando: ``` cucumber -t @tag_cenario ``` para executarmos os nossos cenários.

Pronto!