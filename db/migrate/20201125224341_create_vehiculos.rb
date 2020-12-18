class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
      t.string :motor
      t.string :marca
      t.string :modelo
      t.integer :cantpasj
      t.integer :anyofabric
      t.string :foto
      t.integer :cilindraje

      t.timestamps
    end
  end
end
