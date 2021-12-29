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
            
            Esquema do Cenário: 1 - Configuração válida de produto
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <cor>, o <tamanho> e a <quantidade>
            Então o sistema deve permitir a inserção do produto no carrinho


            Esquema do Cenário: 2 - Configuração inválida do produto
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu fizer a inserção do produto no carrinho sem selecionar <cor>, <tamanho> e/ou <quantidade>
            Então o sistema não deve permitir a inserção do produto no carrinho


            Esquema do Cenário: 3 - Configuração inválida da quantidade
            Dado que eu acesse a página do produto "Augusta Pullover Jacket"
            Quando eu selecionar a <cor>, o <tamanho> e 11 itens
            Então o sistema deve permitir a inserção do produto no carrinho