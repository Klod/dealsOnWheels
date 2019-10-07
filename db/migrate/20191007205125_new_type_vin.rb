class NewTypeVin < ActiveRecord::Migration[6.0]
  def change
    change_column :cars, :vin, :string
  end
end
