Dado("que eu acesse a url do site automation") do
    @login.load
    
    end
  
  Quando("digito email e senha") do
    @login.logar
    sleep(5)
    
  end
  
  Então("devo acessar site com sucesso") do
    
  end