class Account::RentalsController < Account::AccountController

  before_action :find_rental, except: [:index]

  def index
    @rentals = current_user.rentals.all
  end

  def edit
  end

  def update
    @rental.update(rental_params)
    if @rental.save
      redirect_to account_rentals_path, notice: 'Your rental was successfully updated!'
    else
      render :edit
    end
  end

  def destroy
    @rental.destroy
    redirect_to account_rentals_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :equipment_id)
  end

  def find_rental
    @rental = Rental.find(params[:id])
  end
end
