class LoginController < ApplicationController
  def index
    @mensagens = []
  end

  def create
    email = params[:email]
    senha = params[:senha]
    usuario = login(email, senha)

    if usuario.nil?
      x = ["EMAIL OU SENHA INCORRETA"]
      @mensagens = x
      render 'login/index'
    else
      Usuario.set_usuario_logado(usuario)
      redirect_to root_path, notice: "LOGIN EFETUADO COM SUCESSO! "
    end
  end

  def login(email, senha)
    usuario = Usuario.all
    user = nil
    usuario.each do |u|
      if u.email == email and u.senha == senha
        user = u
      end
    end
    user
  end

  def destroy
    Usuario.set_usuario_logado(nil)
    redirect_to root_path, notice: "LOGOUT EFETUADO COM SUCESSO! "
  end
end
