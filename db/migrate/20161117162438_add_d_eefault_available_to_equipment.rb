class AddDEefaultAvailableToEquipment < ActiveRecord::Migration[5.0]
  def change
    change_column :equipment, :available, :boolean, default: true
  end
end
