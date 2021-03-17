require 'test_helper'

class ReclamacaoTest < ActiveSupport::TestCase
  test "criando reclamacao" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    reclamacao = Reclamacao.new titulo:'PC quebrado', texto:'PC comprado defeituoso', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
    assert reclamacao.save
  end
  test "editando reclamacao" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    reclamacao = Reclamacao.new titulo:'PC quebrado', texto:'PC comprado defeituoso', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
    assert reclamacao.update titulo:'PC defeituoso', texto:'PC comprado defeituoso', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
  end
  test "criando reclamacao sem texto" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    reclamacao = Reclamacao.new titulo:'PC quebrado', texto:'', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
    assert_not reclamacao.save
  end
  test "editando reclamacao com titulo muito grande" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    reclamacao = Reclamacao.new titulo:'PC quebrado', texto:'PC comprado defeituoso', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
    assert_not reclamacao.update titulo:'PC defeituoso e sem pegar', texto:'PC comprado defeituoso', cat_problema:'Informatica', nome_empresa:'Empresa1', usuario_id: usuario.id
  end
end
