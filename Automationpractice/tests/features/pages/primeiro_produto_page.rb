class Home < SitePrism::Page
    set_url '/'

    element :vestido,          "a[href='http://automationpractice.com/index.php?id_category=8&controller=category']"
    element :vestidoEstampado, "img[title='Printed Dress']", match: :first
    element :botaoAdicionar,   "a[title='Add to cart']", match: :first
    element :checkout,          "a[class='btn btn-default button button-medium']"
    element :termosCheckout,    "#uniform-cgv"
    element :prosseguir,         "a[title='Proceed to checkout']"
    element :prosseguir2,        "button[name='processAddress']"
    element :prosseguir3,        "button[name='processCarrier']"
    element :formaPagamento,     "a[title='Pay by check.']"
    element :botaoConfirmar,     "button[class='button btn btn-default button-medium']"
    element :validaMsg,          '.alert.alert-success'


  def adicionar_vestido
        vestido.click
        vestidoEstampado.hover
        botaoAdicionar.click
        checkout.click
        sleep(5)
    end

 def incluir_pagamento
    prosseguir.click
    prosseguir2.click
    termosCheckout.click
    prosseguir3.click
    formaPagamento.click
    botaoConfirmar.click
 end

 def verificarTexto
    wait_until_validaMsg_visible(wait:30)
    alertSucessText = validaMsg.text()
    puts "sadwdwef #{alertSucessText}"
    alertSucessText 
end

end