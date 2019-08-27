class RemoveReferencesFromRequests < ActiveRecord::Migration[5.2]
  def change
    remove_reference :requests, :charities, foreign_key: true
    remove_reference :requests, :users, foreign_key: true
    remove_reference :requests, :sweets, foreign_key: true
  end
end
