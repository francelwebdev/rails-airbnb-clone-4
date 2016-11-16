class Account::RentalsController < Account::AccountController

  def index
    @rentals = current_user.rentals.all
  end
end
