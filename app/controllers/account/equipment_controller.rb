class Account::EquipmentController < Account::AccountController

  before_action :find_equipment, only: [:show, :edit, :update, :destroy]

  def index
    @equipment = current_user.equipment.all
  end

  def show
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.user = current_user
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @equipment.update(equipment_params)
    if @equipment.save
      redirect_to equipment_path(@equipment)
    else
      render :edit
    end
  end

  def destroy
    @equipment.destroy
    redirect_to account_equipment_index_path
  end

  private

  def equipment_params
    params.require(:equipment).permit(:title, :description, :category, :price)
  end

  def find_equipment
    @equipment = current_user.equipment.find(params[:id])
  end
end
