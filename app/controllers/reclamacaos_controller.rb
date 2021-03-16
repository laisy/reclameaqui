class ReclamacaosController < ApplicationController
  before_action :set_reclamacao, only: [:show, :edit, :update, :destroy]

  # GET /reclamacaos
  # GET /reclamacaos.json
  def index
    if params[:title] and params[:empresa]
      @reclamacaos = Reclamacao.where("titulo like ?","%#{params[:title]}%").where(:nome_empresa => params[:empresa])
    else
      @reclamacaos = Reclamacao.all
    end
  end

  # GET /reclamacaos/1
  # GET /reclamacaos/1.json
  def show
  end

  # GET /reclamacaos/new
  def new
    @reclamacao = Reclamacao.new
  end

  # GET /reclamacaos/1/edit
  def edit
    
  end

  # POST /reclamacaos
  # POST /reclamacaos.json
  def create
    @reclamacao = Reclamacao.new(reclamacao_params)
    user = Usuario.get_usuario_logado
    @reclamacao.write_attribute(:usuario_id, user.id)
    respond_to do |format|
      if @reclamacao.save
        format.html { redirect_to root_path, notice: 'RECLAMAÇÃO EFETUADA COM SUCESSO' }
        format.json { render :show, status: :created, location: @reclamacao }
      else
        format.html { render :new }
        format.json { render json: @reclamacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reclamacaos/1
  # PATCH/PUT /reclamacaos/1.json
  def update
    respond_to do |format|
      if @reclamacao.update(reclamacao_params)
        format.html { redirect_to usuario_path(Usuario.get_usuario_logado), notice: 'RECLAMAÇÃO ATUALIZADA!' }
        format.json { render :show, status: :ok, location: @reclamacao }
      else
        format.html { render :edit }
        format.json { render json: @reclamacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reclamacaos/1
  # DELETE /reclamacaos/1.json
  def destroy
    @reclamacao.destroy
    respond_to do |format|
      format.html { redirect_to usuario_path(Usuario.get_usuario_logado), notice: 'RECLAMAÇÃO APAGADA! ' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reclamacao
      @reclamacao = Reclamacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reclamacao_params
      params.require(:reclamacao).permit(:titulo, :texto, :cat_problema, :nome_empresa)
    end
end