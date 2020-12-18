class Search < ApplicationRecord
	self.inheritance_column = "not_sti"

	def search_vehiculo
		vehiculo = vehiculo.all
		vehiculo = vehiculo.where(['marca LIKE ?', Marca]) if Marca.present?
        vehiculo = vehiculo.where(['Color LIKE ?', Color]) if Color.present?
     
        return vehiculo
		
	end
end
