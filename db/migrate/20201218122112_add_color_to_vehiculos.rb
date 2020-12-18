class AddColorToVehiculos < ActiveRecord::Migration[5.1]
  def change
    add_column :vehiculos, :color, :string
  end
end
