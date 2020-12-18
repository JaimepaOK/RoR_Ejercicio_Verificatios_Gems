class BusquedasController < ApplicationController

	def show
        @buscador = Buscador.find(params[:id])
    end 

    def new 
        @buscador = Buscador.new
        @marca = Vehiculo.distinct.pluck(:marca)
        @color = Vehiculo.distinct.pluck(:color)
    end

    def create
        @buscador = Buscador.create(search_params)
        redirect_to @buscador
    end 

    private

    def search_params
        params.require(:buscador).permit(:motor, :marca, :color)
    end 


end
