class Car < ApplicationRecord
   belongs_to :user 
   has_one_attached :avatar
   has_many_attached :images  
   has_many :year_make_model
   has_many :bids

   def highest_bid
      bids.order(:bid_amount).first  
   end
end

   
