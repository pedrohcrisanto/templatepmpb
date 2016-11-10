class RelatorioPlanoDeVoosController < ApplicationController
  before_action :set_relatorio_plano_de_voo, only: [:show, :edit, :update, :destroy]

  # GET /relatorio_plano_de_voos
  # GET /relatorio_plano_de_voos.json
  def index
    @relatorio_plano_de_voos = RelatorioPlanoDeVoo.all
  end

  # GET /relatorio_plano_de_voos/1
  # GET /relatorio_plano_de_voos/1.json
  def show
  end

  # GET /relatorio_plano_de_voos/new
  def new
    @relatorio_plano_de_voo = RelatorioPlanoDeVoo.new
  end

  # GET /relatorio_plano_de_voos/1/edit
  def edit
  end

  # POST /relatorio_plano_de_voos
  # POST /relatorio_plano_de_voos.json
  def create
    @relatorio_plano_de_voo = RelatorioPlanoDeVoo.new(relatorio_plano_de_voo_params)

    respond_to do |format|
      if @relatorio_plano_de_voo.save
        format.html { redirect_to @relatorio_plano_de_voo, notice: 'Relatorio plano de voo was successfully created.' }
        format.json { render :show, status: :created, location: @relatorio_plano_de_voo }
      else
        format.html { render :new }
        format.json { render json: @relatorio_plano_de_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorio_plano_de_voos/1
  # PATCH/PUT /relatorio_plano_de_voos/1.json
  def update
    respond_to do |format|
      if @relatorio_plano_de_voo.update(relatorio_plano_de_voo_params)
        format.html { redirect_to @relatorio_plano_de_voo, notice: 'Relatorio plano de voo was successfully updated.' }
        format.json { render :show, status: :ok, location: @relatorio_plano_de_voo }
      else
        format.html { render :edit }
        format.json { render json: @relatorio_plano_de_voo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorio_plano_de_voos/1
  # DELETE /relatorio_plano_de_voos/1.json
  def destroy
    @relatorio_plano_de_voo.destroy
    respond_to do |format|
      format.html { redirect_to relatorio_plano_de_voos_url, notice: 'Relatorio plano de voo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio_plano_de_voo
      @relatorio_plano_de_voo = RelatorioPlanoDeVoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relatorio_plano_de_voo_params
      params.require(:relatorio_plano_de_voo).permit(:condições_relevantes, :discrep_obser_missao, :discrep_anteriores_missao, :conclusao, :id_pdv, :id_relatorio_voo)
    end
end
