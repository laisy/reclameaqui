require 'test_helper'

class ReclamacaoTest < ActiveSupport::TestCase
  test "criando reclamacao" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    reclamacao = Reclamacao.new titulo:'PC quebrado', texto:'PC comprado defeituoso', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
    assert reclamacao.save
  end
  
end
