class PlanoDeVoosController < ApplicationController
  before_action :set_plano_de_voo, only: [:show, :edit, :update, :destroy]

  # GET /plano_de_voos
  # GET /plano_de_voos.json
  def index
    @plano_de_voos = PlanoDeVoo.all
  end

  # GET /plano_de_voos/1
  # GET /plano_de_voos/1.json
  def show
  end

  # GET /plano_de_voos/new
  def new
    @plano_de_voo = PlanoDeVoo.new
  end

  # GET /plano_de_voos/1/edit
  def edit
  end

  # POST /plano_de_voos
  # POST /plano_de_voos.json
  def create
    @plano_de_voo = PlanoDeVoo.new(plano_de_voo_params)

    respond_to do |format|
      if @plano_de_voo.save
        format.html { redirect_to @plano_de_voo, notice: 'Plano de voo was successfully created.' }
        format.json { render :show, status: :created, location: @plano_de_voo }
      else
        format.html { render :new }
        format.json { render json: @plano_de_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plano_de_voos/1
  # PATCH/PUT /plano_de_voos/1.json
  def update
    respond_to do |format|
      if @plano_de_voo.update(plano_de_voo_params)
        format.html { redirect_to @plano_de_voo, notice: 'Plano de voo was successfully updated.' }
        format.json { render :show, status: :ok, location: @plano_de_voo }
      else
        format.html { render :edit }
        format.json { render json: @plano_de_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plano_de_voos/1
  # DELETE /plano_de_voos/1.json
  def destroy
    @plano_de_voo.destroy
    respond_to do |format|
      format.html { redirect_to plano_de_voos_url, notice: 'Plano de voo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plano_de_voo
      @plano_de_voo = PlanoDeVoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plano_de_voo_params
      params.require(:plano_de_voo).permit(:objetivo_operacao, :codigo_chamdarpa, :data_voo, :duracao_frequencia_voo, :regra_voo, :tipo_operacao, :numero_estacao, :localizao_estacao, :procedimento_transferencia, :local_decolagem, :local_destino, :requisitos_decolagem, :requisitos_pouso, :rota, :altura_voo, :comunicacao_ats, :enlace_pilotagem, :comunicacao_piloto_observador, :id_usuario)
    end
end
