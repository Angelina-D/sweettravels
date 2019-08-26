class AddColumnsToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :description, :text
    add_reference :requests, :charities, foreign_key: true
    add_column :requests, :price_cents, :integer
    add_column :requests, :donation_cents, :integer
    add_column :requests, :quantity, :integer
    add_reference :requests, :users, foreign_key: true
    add_reference :requests, :sweets, foreign_key: true
  end
end
