

Dado("que eu acesse o protheus, na tela de cadastro de materiais") do
   login.load
   login.logar

   sleep 5
   
   
   find("label", :text => 'Seja bem-vindo, ALAN.MACHADO.')

   login.ambiente_faturamento

      
   #atualizações
   home.atualizacoes_fat.click
     

   #cadastros
   #page.has_css?(home.espera_tela, wait: 10)
   page.has_css?('#COMP3136 > label', wait: 10)
   home.cadastros_fat.click
   sleep 4

   #produtos
   page.has_css?('#COMP3136 > label', wait: 10)
   home.produto_fat.click
   #find('label[title="Produtos"]').click
   
   

   within_frame('SESSION\*\*\*\*0001') do
    page.has_css?('#COMP4589 > button', wait: 50)
    page.find('#COMP4589 > button').click
   end#SESSION\\\*\\\*\\\*\\\*0001
   
   sleep 15   
 end
 
 Quando("eu preecher os campos orbigatórios e aba logistica") do
                #preenchendo campos  
                
    within_frame('SESSION\*\*\*\*0001') do
        sleep 20  
      #codigo material
        find('div[name="M->B1_COD"] > input').click
        sleep 2
        find('div[name="M->B1_COD"] > input').set CONFIG['cod_material']
        sleep 10        
        expect(find('div[name="M->B1_COD"] > input').value.gsub(' ', '')).to eql CONFIG['cod_material'] 
       
        #binding.pry
        #descriçaõ material
        find('div[name="M->B1_TIPO"]').double_click
        sleep 3
        find('div[name="M->B1_DESC"] > input').click
        sleep 2
        find('div[name="M->B1_DESC"] > input').set CONFIG['desc_material']
        sleep 20
        
        expect(find('div[name="M->B1_DESC"] > input').value.gsub(' ', '').gsub('OT','O T')).to eql CONFIG['desc_material'] 
        
       

        #tipo
        find('div[name="M->B1_TIPO"]').double_click
        sleep 8
        find('div[name="M->B1_TIPO"] > input').set 'GN'
        sleep 12

        #Unidade
        find('div[name="M->B1_UM"] > input').double_click
        sleep 2
        find('div[name="M->B1_UM"] > input').set 'UN'
        sleep 12

        #cod.categoria
        find('div[name="M->B1_XCODCT"] > input').double_click
        sleep 6
        find('div[name="M->B1_XCODCT"] > input').set '1'
        sleep 10

        
        #cod sub categoria
        find('div[name="M->B1_XCODSUB"] > input').double_click
        sleep 8
        find('div[name="M->B1_XCODSUB"] > input').set 'ACESSORIO DESKTOP'
        sleep 4
        expect(find('div[name="M->B1_XCODSUB"] > input').value.gsub(' ', '').gsub('OD','O D')).to eql 'ACESSORIO DESKTOP'
        sleep 10

        #campo origem
        find('div[name="M->B1_ORIGEM"] > input').double_click
        sleep 6
        find('div[name="M->B1_ORIGEM"] > input').set '1'
        sleep 15
        find('div[name="M->B1_ORIGEM"] > input').set '1'
        sleep 4
       
        #cod natureza
         find('div[name="M->B1_XCODNAT"] > input').set '4.01.001'
         sleep 6
         

         #aba logistica
         find('#COMP6020 > div.button-container > table > tbody > tr > td:nth-child(3) > a').click
         sleep 20
         
        
         #peso bruto
         find('div[name="M->B1_PESBRU"] > input').click
         sleep 4
         find('div[name="M->B1_PESBRU"] > input').set '12,50'
         sleep 12


         #largura
         find('div[name="M->B1_XLARGU"] > input').click
         sleep 6
         find('div[name="M->B1_XLARGU"] > input').click
         sleep 2
         find('div[name="M->B1_XLARGU"] > input').set '10,5' 
         sleep 8


         #altura
         find('div[name="M->B1_XALTUR"] > input').click
         sleep 4
         find('div[name="M->B1_XALTUR"] > input').click
         sleep 2
         find('div[name="M->B1_XALTUR"] > input').set '6,3'
         sleep 8

         


         #comprimento
         find('div[name="M->B1_XCOMPR"] > input').click
         sleep 6
         find('div[name="M->B1_XCOMPR"] > input').click
         sleep 2
         find('div[name="M->B1_XCOMPR"] > input').set '20,5'
         sleep 12
         

         #btn confirmar
         find('div[class="tbrowsebutton twidget dict-tbrowsebu] > button').click
         binding.pry 

    end  
    
    
 end
 
 Entao("um cadastro de materiais será incluido com sucesso") do
  puts 'quase'
 end




Dado("que eu tenha um pedido de Compra conta & orden") do
  login.load

  #login +ambiente 
  login.logar
  login.ambiente_compras


  home.miscelanea.click
  sleep 8
  # home.miscelanea.hover
  # sleep 3
  find('#COMP3094 > span.scroll-button-down').click
  sleep 2
  find('#COMP3094 > span.scroll-button-down').click
  sleep 2
  find('#COMP3094 > span.scroll-button-down').click
  sleep 2

  home.especifico.hover.click
  sleep 4
  home.im_xml_nfe.click
  sleep 20

end

Quando("eu realizar a importação do xml") do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao("a entrada do material será concluida") do
  pending # Write code here that turns the phrase above into concrete actions
end