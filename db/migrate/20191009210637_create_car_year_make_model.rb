class CreateCarYearMakeModel < ActiveRecord::Migration[6.0]
  def change
    create_table :car_year_make_models do |t|
      t.integer :year
      t.string :make
      t.string :model
    end
  end
end
