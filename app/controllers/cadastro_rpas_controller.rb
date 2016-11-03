class CadastroRpasController < ApplicationController
  before_action :set_cadastro_rpa, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_rpas
  # GET /cadastro_rpas.json
  def index
    @cadastro_rpas = CadastroRpa.all
  end

  # GET /cadastro_rpas/1
  # GET /cadastro_rpas/1.json
  def show
  end

  # GET /cadastro_rpas/new
  def new
    @cadastro_rpa = CadastroRpa.new
  end

  # GET /cadastro_rpas/1/edit
  def edit
  end

  # POST /cadastro_rpas
  # POST /cadastro_rpas.json
  def create
    @cadastro_rpa = CadastroRpa.new(cadastro_rpa_params)

    respond_to do |format|
      if @cadastro_rpa.save
        format.html { redirect_to @cadastro_rpa, notice: 'Cadastro rpa was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_rpa }
      else
        format.html { render :new }
        format.json { render json: @cadastro_rpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_rpas/1
  # PATCH/PUT /cadastro_rpas/1.json
  def update
    respond_to do |format|
      if @cadastro_rpa.update(cadastro_rpa_params)
        format.html { redirect_to @cadastro_rpa, notice: 'Cadastro rpa was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_rpa }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_rpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_rpas/1
  # DELETE /cadastro_rpas/1.json
  def destroy
    @cadastro_rpa.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_rpas_url, notice: 'Cadastro rpa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_rpa
      @cadastro_rpa = CadastroRpa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_rpa_params
      params.require(:cadastro_rpa).permit(:fabrica, :modelo, :propulsao, :serial, :descricao_material, :numero_certificado_requerente, :tipo_certificado_requerente, :anexar_certificado_requerente, :pais_registro_rpa, :matricula_rpa, :anexo_copia_certificado_rpa, :anexo_copia_matricula_rpa, :num_certificado_estacao, :tipo_certificado_estacao, :anexar_licensa_estacao)
    end
end
