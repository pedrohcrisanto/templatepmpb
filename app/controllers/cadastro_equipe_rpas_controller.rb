class CadastroEquipeRpasController < ApplicationController
  before_action :set_cadastro_equipe_rpa, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_equipe_rpas
  # GET /cadastro_equipe_rpas.json
  def index
    @cadastro_equipe_rpas = CadastroEquipeRpa.all
  end

  # GET /cadastro_equipe_rpas/1
  # GET /cadastro_equipe_rpas/1.json
  def show
  end

  # GET /cadastro_equipe_rpas/new
  def new
    @cadastro_equipe_rpa = CadastroEquipeRpa.new
  end

  # GET /cadastro_equipe_rpas/1/edit
  def edit
  end

  # POST /cadastro_equipe_rpas
  # POST /cadastro_equipe_rpas.json
  def create
    @cadastro_equipe_rpa = CadastroEquipeRpa.new(cadastro_equipe_rpa_params)

    respond_to do |format|
      if @cadastro_equipe_rpa.save
        format.html { redirect_to @cadastro_equipe_rpa, notice: 'Cadastro equipe rpa was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_equipe_rpa }
      else
        format.html { render :new }
        format.json { render json: @cadastro_equipe_rpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_equipe_rpas/1
  # PATCH/PUT /cadastro_equipe_rpas/1.json
  def update
    respond_to do |format|
      if @cadastro_equipe_rpa.update(cadastro_equipe_rpa_params)
        format.html { redirect_to @cadastro_equipe_rpa, notice: 'Cadastro equipe rpa was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_equipe_rpa }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_equipe_rpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_equipe_rpas/1
  # DELETE /cadastro_equipe_rpas/1.json
  def destroy
    @cadastro_equipe_rpa.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_equipe_rpas_url, notice: 'Cadastro equipe rpa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_equipe_rpa
      @cadastro_equipe_rpa = CadastroEquipeRpa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_equipe_rpa_params
      params.require(:cadastro_equipe_rpa).permit(:nome, :tipo_licenca_certificado, :numero_licenca_certificado, :anexar_copia, :experiencia_pilito_observador, :id_usuario, :id_erpa)
    end
end
