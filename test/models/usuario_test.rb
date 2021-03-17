require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  test "criando usuario" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    assert usuario.save
   end
  test "editando usuario" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    assert usuario.update login:'joaooo', email: 'joao@email.com', senha:'123456'
   end
  
end