class Login < SitePrism::Page
    set_url '/'

    
    element :botaoLogin, "a[class='login']"
    element :email, '#email'
    element :senha, '#passwd'
    element :botaoLogar, "i[class='icon-lock left']"
    

  def logar 
    botaoLogin.click  
    email.set('maabymandira@gmail.com')
    senha.set('123456')
    botaoLogar.click    
  end
end