class RemoveUsersFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :users_id, :integer
  end
end
