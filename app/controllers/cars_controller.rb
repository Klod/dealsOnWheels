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
    
    def destroy
        car = Car.find(params[:id])
        car.delete unless car.user_id != current_user.id
        
        redirect_to "/"
    end
    
    def create
       car = Car.new(car_params)
       car.user_id = current_user.id
       car.save
       
       redirect_to "/"
    end
    
    def edit
        @car = Car.find(params[:id])
    end
    
    def update
        car = Car.find(params[:id])
        car.update(car_params) unless car.user_id != current_user.id
         
         redirect_to "/cars/#{car.id}"
     end
    
    private
	def car_params
		params.require(:car).permit(:year, :make, :model, :vin, :picture)
	end
end