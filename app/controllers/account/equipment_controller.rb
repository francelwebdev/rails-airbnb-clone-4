class EquipmentController < ApplicationController

  before_action :find_equipment

  def index
    @equipment = Equipment.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def equipment_params
    params.require(:equipment).permit(:title, :description, :category, :price)
  end

  def find_equipment
    @equipment = Equipment.find(params[:id])
  end
end
