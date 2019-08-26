class RemoveSweetsFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :sweets_id, :integer
  end
end
