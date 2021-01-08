class Usuario < ApplicationRecord
  has_many :reclamacaos
  validates :login, presence: {message: 'login inválido!' } , uniqueness: true, length: {maximum: 10, message: 'deve conter no máximo 8 caracteres!' }
  validates :senha, presence: {message: 'senha inválida!' }, length:{is: 6, message: ' deve conter 6 dígitos' }
  validates :email, presence: {message: 'email inválido!' }, uniqueness: true

  private
    @usuario_logado = nil
    @ativo = false

  def self.get_usuario_logado
    @usuario_logado
  end

  def self.set_usuario_logado (usuario)
    @usuario_logado = usuario

    if @usuario_logado != nil
      @ativo = true
    else
      @ativo = false
    end
  end

  def self.logado
    @ativo
  end
end
