class AcessoriosRpasController < ApplicationController
  before_action :set_acessorios_rpa, only: [:show, :edit, :update, :destroy]

  # GET /acessorios_rpas
  # GET /acessorios_rpas.json
  def index
    @acessorios_rpas = AcessoriosRpa.all
  end

  # GET /acessorios_rpas/1
  # GET /acessorios_rpas/1.json
  def show
  end

  # GET /acessorios_rpas/new
  def new
    @acessorios_rpa = AcessoriosRpa.new
  end

  # GET /acessorios_rpas/1/edit
  def edit
  end

  # POST /acessorios_rpas
  # POST /acessorios_rpas.json
  def create
    @acessorios_rpa = AcessoriosRpa.new(acessorios_rpa_params)

    respond_to do |format|
      if @acessorios_rpa.save
        format.html { redirect_to @acessorios_rpa, notice: 'Acessorios rpa was successfully created.' }
        format.json { render :show, status: :created, location: @acessorios_rpa }
      else
        format.html { render :new }
        format.json { render json: @acessorios_rpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acessorios_rpas/1
  # PATCH/PUT /acessorios_rpas/1.json
  def update
    respond_to do |format|
      if @acessorios_rpa.update(acessorios_rpa_params)
        format.html { redirect_to @acessorios_rpa, notice: 'Acessorios rpa was successfully updated.' }
        format.json { render :show, status: :ok, location: @acessorios_rpa }
      else
        format.html { render :edit }
        format.json { render json: @acessorios_rpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acessorios_rpas/1
  # DELETE /acessorios_rpas/1.json
  def destroy
    @acessorios_rpa.destroy
    respond_to do |format|
      format.html { redirect_to acessorios_rpas_url, notice: 'Acessorios rpa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acessorios_rpa
      @acessorios_rpa = AcessoriosRpa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acessorios_rpa_params
      params.require(:acessorios_rpa).permit(:nome, :cor, :descricao, :id_usuario, :id_acessorio_intege, :serial_num_bateria, :serial_sigla_bateria, :compativel_aeronave_bateria, :modelo_bateria, :material_bateria, :carga_bateria, :potencia_bateria, :tensao_bateria)
    end
end
