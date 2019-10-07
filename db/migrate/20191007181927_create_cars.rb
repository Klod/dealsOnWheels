class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.integer :year
      t.string :make
      t.string :model
      t.integer :vin
    end
  end
end
