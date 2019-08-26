class RemoveRequestsFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :requests_id, :integer
  end
end
