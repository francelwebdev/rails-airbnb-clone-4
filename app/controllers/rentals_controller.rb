class RentalsController < ApplicationController

before_action :find_equipment

  def index
    @rentals = current_user.rentals.all
  end

  def show
  end

  def new
    @rental = Rental.new
    # @equipment = Equipment.find(params[:equipment_id])
    # @rental.equipment = @equipment
    # @rental.user = current_user
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.equipment = @equipment
    @rental.user = current_user
    # @rental = @equipment.rentals.new(rental_params)
      if @rental.save
        # flash[:success] = "Congratulations! The equipment has been rented!"
        @equipment.available? == false
        redirect_to  account_rental_path(@rental)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :equipment_id)
  end

  def find_equipment
    @equipment = Equipment.find(params[:eqipment_id])
  end

end
