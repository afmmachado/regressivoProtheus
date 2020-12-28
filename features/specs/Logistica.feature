#language:pt


@regressivo_ERP
Funcionalidade: Logistica

@mercadoria
Cenario: Validar inclusão e revisão do cadastro de produto
    Dado que eu acesse o protheus, na tela de cadastro de materiais
    Quando eu preecher os campos orbigatórios e aba logistica
    Entao um cadastro de materiais será incluido com sucesso

@nathan
Cenario: Validar classificação automática das notas fiscais de recebimento compras nacionais conta e ordem
    Dado que eu tenha um pedido de Compra conta & orden
    Quando eu realizar a importação do xml
    Entao a entrada do material será concluida