class RemoveDetailsFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :offers, :users, foreign_key: true
    remove_reference :offers, :requests, foreign_key: true
  end
end
