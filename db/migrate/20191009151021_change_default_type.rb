class ChangeDefaultType < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :account_type, from: "dealer", to: "owner"
  end
end
