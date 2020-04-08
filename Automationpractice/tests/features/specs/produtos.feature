#language :pt

Funcionalidade: Adicionar três itens ao carrinho e excluir um e finalizar a compra

Cenario: Adicionar três itens ao carrinho excluir um deles e finalizar a compra
    Dado que eu adiciono três vestidos ao carrinho
    E exclui um deles
    Quando informo dados para pagamento
    Então compra é realizada com sucesso.