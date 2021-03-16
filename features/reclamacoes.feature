Feature: Reclamacoes
    As an usuario do sistem
    I want criar, remover, ver e editar uma reclamação
    So that eu nao quero fazer isso manualmente

    Scenario: cadastrar nova reclamacao corretamente
        Given eu estou logada no sistema
        And eu estou na página de cadastro de reclamacao
        When eu crio uma reclamacao com o titulo "brinquedo quebrado" and texto "Aparelho comprado veio quebrado" and categoria "Brinquedos" and nome da empresa "Empresa1"
        When eu clico em criar reclamacao
        Then eu vejo a mensagem "RECLAMAÇÃO EFETUADA COM SUCESSO"

    Scenario: editar reclamação corretamente
        Given eu estou logada no sistema
        And eu estou na página de cadastro de reclamacao
        When eu crio uma reclamacao com o titulo "liquidificador" and texto "Aparelho comprado veio quebrado" and categoria "Eletrodomestico" and nome da empresa "Empresa1"
        And eu clico em criar reclamacao
        And eu estou na página de edição do produto de titulo "liquidificador"
        And eu edito uma reclamacao com o titulo "liquidificador" and texto "Aparelho comprado veio com defeito" and categoria "Eletrodomestico" and nome da empresa "Empresa1"
        And eu clico em editar reclamacao
        Then eu vejo a mensagem "RECLAMAÇÃO ATUALIZADA!"

    Scenario: cadastrar nova reclamacao sem titulo
        Given eu estou logada no sistema
        And eu estou na página de cadastro de reclamacao
        When eu crio uma reclamacao com o titulo "" and texto "Aparelho comprado veio quebrado" and categoria "Eletrodomestico" and nome da empresa "Empresa1"
        When eu clico em criar reclamacao
        Then eu vejo a mensagem "Titulo campo obrigatório"

    Scenario: cadastrar nova reclamacao com titulo muito pequeno
        Given eu estou logada no sistema
        And eu estou na página de cadastro de reclamacao
        When eu crio uma reclamacao com o titulo "a" and texto "Aparelho comprado veio quebrado" and categoria "Eletrodomestico" and nome da empresa "Empresa1"
        When eu clico em criar reclamacao
        Then eu vejo a mensagem "Titulo 5 caracteres é o minimo permitido"
