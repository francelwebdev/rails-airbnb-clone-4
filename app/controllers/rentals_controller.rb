class RentalsController < ApplicationController

before_action :find_equipment

  def show
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.equipment = @equipment
    @rental.user = current_user
    @equipment.available == false
    if @rental.save
      redirect_to account_rentals_path, notice: 'Congratulations! Your rental was successful!'
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :equipment_id)
  end

  def find_equipment
    @equipment = Equipment.find(params[:equipment_id])
  end

end
