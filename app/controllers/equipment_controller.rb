class EquipmentController < ApplicationController

  def index
    @equipment = Equipment.all
    @equipment = Equipment.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    @equipment_coordinates = { lat: @equipment.latitude, lng: @equipment.longitude }
  end

end
