class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :Marca
      t.string :Color

      t.timestamps
    end
  end
end
