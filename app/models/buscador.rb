class Buscador < ApplicationRecord
	self.inheritance_column = "not_sti"

    def search_pokemon
    	
        vehiculo = Vehiculo.all 
		vehiculo = Vehiculo.where(['marca LIKE ?', marca]) if marca.present?
		vehiculo = Vehiculo.where(['color LIKE ?', color]) if color.present?


        return vehiculo
    end 
end
