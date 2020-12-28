class Cadastro_produto < SitePrism::Page


    element :campo_cod,             'div[name="M->B1_COD"] > input'
    element :campo_desc,            'div[name="M->B1_DESC"] > input'
    element :campo_tipo,            'div[name="M->B1_TIPO"] > input'
    element :campo_unidade,         'div[name="M->B1_UM"] > input'
    element :campo_cod_cat,         'div[name="M->B1_XCODCT"] > input'
    element :campo_cod_sub_cat,     'div[name="M->B1_XCODSUB"] > input'






end    