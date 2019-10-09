class ChangeType < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :account_type, from: "owner", to: "dealer"
  end
end
