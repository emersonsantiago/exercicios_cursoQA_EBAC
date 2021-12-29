 #language: pt


Funcionalidade: Tela de cadastro - checkout

Exemplos:
| nome | sobrenome | pais   | endereco         | cidade | CEP      | telefone      | e-mail                 |
| Joao | Silva     | Brasil | Rua Salvador, 32 | Recife | 50500-00 | (81) 80808080 | joaodasilva@e-mail.com |


Contexto:
Dado que eu acesse a página de cadastro

Esquema do Cenário: 1 - Cadastro com preenchimento dos dados obrigatórios
Quando eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <e-mail>
Então o sistema deve permitir o cadastro


Esquema do Cenário: 2 - Cadastro sem preenchimento dos dados obrigatórios
Quando eu fizer o cadastro sem preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <e-mail>
Então o sistema deve permitir o cadastro


Esquema do Cenário: 3 - Preenchimento de e-mail em formato válido
Quando eu inserir o <e-mail> em formato válido
Então o sistema não deve exibir mensagem de erro


Cenário: 4 - Preenchimento de e-mail em formato inválido
Quando eu inserir o e-mail "joaodasilva.email.com"
Então o sistema deve exibir exibir uma mensagem de erro


Cenário: 5 - Cadastro com campos preenchidos
Quando eu tentar fazer o cadastro estando os campos preenchidos
Então o sistema não deve exibir mensagem de alerta


Cenário: 6 - Cadastro com campos vazios
Quando eu tentar fazer o cadastro estando os campos vazios
Então o sistema deve exibir uma mensagem de alerta