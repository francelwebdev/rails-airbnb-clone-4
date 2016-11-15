class PagesController < ApplicationController
  def home
    @equipment = Equipment.all.sample(3)
  end
end
