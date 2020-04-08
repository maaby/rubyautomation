Dado("que eu adiciono um vestido ao carrinho") do
  home.load
  home.adicionar_vestido
end

Quando("informo dados para pagamento") do
  home.incluir_pagamento
  
end
sleep(5)
Então("compra é realizada com sucesso.") do
  expect(@home.verificarTexto()).to eq("Your order on My Store is complete.")
  
end