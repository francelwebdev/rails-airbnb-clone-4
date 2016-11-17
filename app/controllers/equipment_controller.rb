class EquipmentController < ApplicationController

  def index
    @equipment = Equipment.where("title ILIKE ?", "%#{params[:title]}%").where(available: true)
    # @markers = Equipment.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat equipment.latitude
      marker.lng equipment.longitude
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
    # @equipment_coordinates = { lat: @equipment.latitude, lng: @equipment.longitude }
        @hash = Gmaps4rails.build_markers(@equipment) do |equipment, marker|
      marker.lat equipment.latitude
      marker.lng equipment.longitude
    end
  end

end
