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
   test "criando usuario sem login" do
    usuario = Usuario.new login:'', email: 'joao@email.com', senha:'123456'
    assert_not usuario.save
   end
   test "editando usuario com login muito pequeno" do
    usuario = Usuario.new login:'joaoo', email: 'joao@email.com', senha:'123456'
    usuario.save
    assert_not usuario.update login:'joao', email: 'joao@email.com', senha:'123456'
   end
end