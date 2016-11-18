class PagesController < ApplicationController
  def home
    @equipment = Equipment.available.first(3)
  end

  def terms
  end
end
