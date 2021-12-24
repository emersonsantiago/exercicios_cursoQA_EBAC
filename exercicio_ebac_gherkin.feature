            #language: pt

            Funcionalidade: Configuração de produto

            Exemplos:
            | cor    | tamanho | quantidade |
            | Blue   | XS      | 1          |
            | Orange | S       | 2          |
            | Red    | M       | 3          |
            |        | L       | 4          |
            |        | XL      | 5          |
            |        |         | 6          |
            |        |         | 7          |
            |        |         | 8          |
            |        |         | 9          |
            |        |         | 10         |
            
            Cenário: 1 - Configuração válida de produto
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <cor>, o <tamanho> e a <quantidade>
            Então o sistema deve permitir a inserção do produto no carrinho


            Cenário: 2 - Configuração do produto sem selecionar a quantidade
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <cor> e o <tamanho>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 3 - Configuração do produto sem selecionar o tamanho
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <cor> e a <quantidade>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 4 - Configuração do produto sem selecionar a cor
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar o <tamanho> e a <quantidade>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 5 - Configuração do produto sem selecionar o tamanho e a quantidade
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <cor>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 6 - Configuração do produto sem selecionar a cor e a quantidade
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar o <tamanho>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 7 - Configuração do produto sem selecionar a cor e o tamanho
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <quantidade>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 8 - Configuração do produto com seleção de 9 itens
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar 9 itens
            Então o sistema deve permitir a inserção do produto no carrinho


            Cenário: 9 - Configuração do produto com seleção de 10 itens
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar 10 itens
            Então o sistema deve permitir a inserção do produto no carrinho


            Cenário: 10 - Configuração do produto com seleção de 11 itens
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar 11 itens
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 11 - Configuração do produto com seleção de 20 itens
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar 20 itens
            Então o sistema não deve permitir a inserção do produto no carrinho


            Cenário: 12 - Retorno à configuração do produto ao estado original
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu clicar no botão "Limpar"
            Então o sistema deve voltar a configuração do produto ao estado original




Funcionalidade: Login na plataforma

Contexto:
Dado que eu acesse a página de autenticação na plataforma

Cenário: 13 - Autenticação válida
Quando eu inserir o usuáruo "joaodasilva@email.com"
E a senha "joao123"
Então o sistema deve direcionar para a tela de checkout


Cenário: 14 - Autenticação com e-mail inválido
Quando eu inserir o usuário "ninguem@email.com"
E a senha "joao123"
Então o sistema deve exibir a mensagem: "Usuário ou senha inválidos"


Cenário: 15 - Autenticação com senha inválida
Quando eu inserir o usuário "joaodasilva@email.com"
E a senha "0000"
Então o sistema deve exibir a mensagem: "Usuário ou senha inválidos"


Cenário: 16 - Autenticação com e-mail e senha inválidos
Quando eu inserir o usuário "ninguem@email.com"
E a senha "0000"
Então o sistema deve exibir a mensagem: "Usuário ou senha inválidos"




Funcionalidade: Tela de cadastro - checkout

Contexto:
Dado que eu acesse a página de cadastro

Cenário: 17 - Cadastro com preenchimento dos dados obrigatórios
Quando eu preencher todos os dados obrigatórios
Então o sistema deve permitir o cadastro


Cenário: 18 - Cadastro sem preenchimento do Nome
Quando eu tentar fazer o cadastro sem preencher o campo "Nome"
Então o sistema não deve permitir o cadastro


Cenário: 19 - Cadastro sem preenchimento do Sobrenome
Quando eu tentar fazer o cadastro sem preencher o campo "Sobrenome"
Então o sistema não deve permitir o cadastro


Cenário: 20 - Cadastro sem preenchimento do País
Quando eu tentar fazer o cadastro sem preencher o campo "País"
Então o sistema não deve permitir o cadastro


Cenário: 21 - Cadastro sem preenchimento do Endereço
Quando eu tentar fazer o cadastro sem preencher o campo "Endereço"
Então o sistema não deve permitir o cadastro


Cenário: 22 - Cadastro sem preenchimento da Cidade
Quando eu tentar fazer o cadastro sem preencher o campo "Cidade"
Então o sistema não deve permitir o cadastro


Cenário: 23 - Cadastro sem preenchimento do CEP
Quando eu tentar fazer o cadastro sem preencher o campo "CEP"
Então o sistema não deve permitir o cadastro


Cenário: 24 - Cadastro sem preenchimento do Telefone
Quando eu tentar fazer o cadastro sem preencher o campo "Telefone"
Então o sistema não deve permitir o cadastro


Cenário: 25 - Cadastro sem preenchimento do Endereço de e-mail
Quando eu tentar fazer o cadastro sem preencher o campo "Endereço de e-mail"
Então o sistema não deve permitir o cadastro


Cenário: 26 - Preenchimento de e-mail em formato válido
Quando eu inserir o e-mail "joaodasilva@email.com"
Então o sistema não deve exibir mensagem de erro


Cenário: 27 - Preenchimento de e-mail em formato inválido
Quando eu inserir o e-mail "joaodasilva.email.com"
Então o sistema deve exibir exibir uma mensagem de erro


Cenário: 28 - Cadastro com campos preenchidos
Quando eu tentar fazer o cadastro estando os campos preenchidos
Então o sistema não deve exibir mensagem de alerta


Cenário: 29 - Cadastro com campos vazios
Quando eu tentar fazer o cadastro estando os campos vazios
Então o sistema deve exibir uma mensagem de alerta