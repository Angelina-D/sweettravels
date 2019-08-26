class RemoveUsersIdFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :users_id, :integer
  end
end
