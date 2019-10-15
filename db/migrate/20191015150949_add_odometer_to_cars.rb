class AddOdometerToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :condition, :string
    add_column :cars, :odometer, :integer
  end
end
