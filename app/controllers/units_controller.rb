class UnitsController < BaseController

  before_action :unit_or_not_found, only: [:show, :edit, :update, :destroy]

  def new
    @unit = Unit.new
  end

  def index
    @units = Unit.page(params[:page]).per(20)
    respond_to do |format|
      format.js { render json: @units, status: 200 }
      format.html
    end
  end

  def show
  end

  def edit
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      flash[:success] = "Usuario cadastrado"
      redirect_to units_path
    else
      render 'new'
    end
  end

  def update
    if @unit.update(unit_params)
      flash['success'] = 'Usuario atualizado'
      redirect_to units_path
    else
      render 'edit'
    end
  end

  def destroy
    @unit.destroy
    redirect_to units_url
  end

  protected

    def unit_or_not_found
      @unit = Unit.find_by(id: params[:id])
      if @unit.nil?
        flash['danger'] = 'Unidade não encontrada.'
        redirect_to units_path
      end

    end
    def unit_params
      params.require(:unit).permit(:name,
                                   :parent_id,
                                   :address,
                                   :zip_code)
    end

end
