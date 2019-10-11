class YearMakeModel < ApplicationRecord
    belongs_to :car
    self.table_name = "car_year_make_models"
end