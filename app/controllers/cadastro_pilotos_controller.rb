class CadastroPilotosController < ApplicationController
  before_action :set_cadastro_piloto, only: [:show, :edit, :update, :destroy]

  # GET /cadastro_pilotos
  # GET /cadastro_pilotos.json
  def index
    @cadastro_pilotos = CadastroPiloto.all
  end

  # GET /cadastro_pilotos/1
  # GET /cadastro_pilotos/1.json
  def show
  end

  # GET /cadastro_pilotos/new
  def new
    @cadastro_piloto = CadastroPiloto.new
  end

  # GET /cadastro_pilotos/1/edit
  def edit
  end

  # POST /cadastro_pilotos
  # POST /cadastro_pilotos.json
  def create
    @cadastro_piloto = CadastroPiloto.new(cadastro_piloto_params)

    respond_to do |format|
      if @cadastro_piloto.save
        format.html { redirect_to @cadastro_piloto, notice: 'Cadastro piloto was successfully created.' }
        format.json { render :show, status: :created, location: @cadastro_piloto }
      else
        format.html { render :new }
        format.json { render json: @cadastro_piloto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_pilotos/1
  # PATCH/PUT /cadastro_pilotos/1.json
  def update
    respond_to do |format|
      if @cadastro_piloto.update(cadastro_piloto_params)
        format.html { redirect_to @cadastro_piloto, notice: 'Cadastro piloto was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadastro_piloto }
      else
        format.html { render :edit }
        format.json { render json: @cadastro_piloto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_pilotos/1
  # DELETE /cadastro_pilotos/1.json
  def destroy
    @cadastro_piloto.destroy
    respond_to do |format|
      format.html { redirect_to cadastro_pilotos_url, notice: 'Cadastro piloto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_piloto
      @cadastro_piloto = CadastroPiloto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadastro_piloto_params
      params.require(:cadastro_piloto).permit(:nome, :tipo_licenca_certificado, :anexar_copia, :experiencia_piloto_observador, :id_usuario, :id_erpa)
    end
end
