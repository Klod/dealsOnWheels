class CarsController < ApplicationController
    def index
        @cars = Car.all
    end
    def new
		@car = Car.new
	end
	
	def show
       @cars = Car.find(params[:id]) 
    end
    
    def create
       car = Car.new(car_params)
       car.user_id = current_user.id
       car.save
       
       redirect_to "/"
    end
    
    private
	def car_params
		params.require(:car).permit(:year, :make, :model, :vin)
	end
end