class Bid < ApplicationRecord
   self.table_name = "bids_tables"
   belongs_to :car
   belongs_to :user

end