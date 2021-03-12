class Usuario < ApplicationRecord
  has_many :reclamacaos
  validates :login, presence: {message: 'login inválido!' } , uniqueness: true, length: {minimum:5}
  validates :senha, presence: {message: 'senha inválida!' }, length:{minimum: 5}
  validates :email, presence: {message: 'email inválido!' }, uniqueness: true, length:{minimum: 5}

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
