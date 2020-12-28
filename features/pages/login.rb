class Login < SitePrism::Page
    set_url '/'
    
    #elementos da tela de acesso a base (inicial)
    element :camp_base, '#inputEnv'
    element :btn_confirmar, 'button[title="Botão confirmar"]'
    
    #tela de user e senha
    element :user, '#COMP3014 > input[type=text'
    element :senha, '#COMP3016 > input[type=text]'
    element :btn_entrar, '#COMP3018 > button'


    #ambiente
    element :camp_amb, '#COMP3029 > input[type=text]'
    element :btn_acess, '#COMP3036 > button'

   


        def logar
          camp_base.set CONFIG['base']
          btn_confirmar.click
          sleep 6
          user.set CONFIG['user']
          sleep 6
          senha.click
          sleep 5
          senha.set '654321'
          sleep 5
          btn_entrar.click
          sleep 8      

        end    


        def ambiente_faturamento
            camp_amb.click
            sleep 3
            camp_amb.set CONFIG['amb_faturamento']
            sleep 4
            btn_acess.click 
            sleep 8
        
        end    


        def ambiente_compras
          camp_amb.click
          sleep 3
          camp_amb.set CONFIG['amb_compras']
          sleep 4
          btn_acess.click 
          sleep 8
      
        end 

        def ambiente_financeiro
          camp_amb.click
          sleep 3
          camp_amb.set CONFIG['amb_financeiro']
          sleep 4
          btn_acess.click 
          sleep 8
      
        end 





 end
