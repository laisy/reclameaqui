Feature: Reclamacoes
    As an usuario do sistem
    I want criar, remover, ver e editar uma reclamação
    So that eu nao quero fazer isso manualmente
    
    Scenario: cadastrar nova reclamação corretamente
        Given eu estou logada no sistema
        And eu estou na página de cadastro de reclamação
        When eu crio uma reclamação com o titulo "Aparelho quebrado" and texto "Aparelho comprado veio quebrado" and categoria "Eletrodomestico" and nome da empresa "Empresa1"
        When eu clico em criar reclamação
        Then eu vejo a mensagem "A reclamacao foi criada com sucesso"
