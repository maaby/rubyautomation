#language: pt

@addProduto
Funcionalidade: Adicionar primeiro produto ao carrinho

Contexto:
    Dado que eu acesse a url do site automation
    Quando digito email e senha
    Então devo acessar site com sucesso
    
Cenario: Adicionar vestido no carrinho
    Dado que eu adiciono um vestido ao carrinho
    Quando informo dados para pagamento
    Então compra é realizada com sucesso.