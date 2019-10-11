class CreateBidsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :bids_tables do |t|
      t.integer :car_id
      t.integer :user_id
      t.integer :bid_amount
      t.boolean :accepted
      
      t.timestamps
    end
  end
end
