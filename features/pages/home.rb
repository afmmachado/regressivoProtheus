class Home < SitePrism::Page

    #tela home - faturamento
    element :atualizacoes_fat, 'label[title="Atualizações (18)"]'
    element :cadastros_fat,    'label[title="Cadastros (34)"]'
    element :espera_tela,      '#COMP3136 > label'
    element :produto_fat,      'label[title="Produtos"]'

    #tela home - compras
    element :miscelanea, 'label[title="Miscelanea (16)"]'
    element :especifico, 'label[title="Especifico (20)"]'
    element :im_xml_nfe, 'label[title="Importar Xml Nfe"]'


end
  