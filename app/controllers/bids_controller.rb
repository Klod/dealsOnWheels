class BidsController < ApplicationController
    def index
            @car = Car.find(params[:car_id])
            @bids = @car.bids
    end
    
    def create
           bid = Bid.new(bid_params)
           bid.user_id = current_user.id
           bid.car_id = params[:car_id]
           
           bid.save!
        
        redirect_to car_bids_path(params[:car_id])
    end
    
    def show
        @bid = Bid.find(params[:id])
        @car = Car.find(params[:car_id])
    end
    
    def update
        @bid = Bid.find(params[:id])
        @bid.update_attributes(accepted: params[:accepted])
    
        redirect_to "/" 
    end
    
    
    private
    def bid_params
       params.require(:bid).permit(:bid_amount) 
    end
end
