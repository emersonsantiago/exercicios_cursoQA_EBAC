#language: pt


Funcionalidade: Login na plataforma

Contexto:
Dado que eu acesse a página de autenticação na plataforma

Cenário: 1 - Autenticação válida
Quando eu inserir o usuáruo "joaodasilva@email.com"
E a senha "joao123"
Então o sistema deve direcionar para a tela de checkout


Cenário: 2 - Autenticação inválida
Quando eu inserir o usuário "ninguem@email.com"
E a senha "00000"
Então o sistema deve exibir a mensagem: "Usuário ou senha inválidos"