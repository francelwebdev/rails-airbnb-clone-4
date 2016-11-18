class EquipmentController < ApplicationController

  def index
    @equipment = Equipment.search(params)

    @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat equipment.latitude
      marker.lng equipment.longitude
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    @review = Review.new
    @reviews = Review.all
    # @equipment_coordinates = { lat: @equipment.latitude, lng: @equipment.longitude }
        @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat equipment.latitude
      marker.lng equipment.longitude
    end
  end

end
