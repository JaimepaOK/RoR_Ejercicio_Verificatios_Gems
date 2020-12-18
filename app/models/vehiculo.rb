class Vehiculo < ApplicationRecord
	def self.search(search)
		if search
			Vehiculo.where(marca: search)
		else
			@vehiculos = Vehiculo.all
		end
	end
end
