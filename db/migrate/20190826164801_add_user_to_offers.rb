class AddUserToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :user_id, :integer
  end
end
