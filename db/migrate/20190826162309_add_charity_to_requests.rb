class AddCharityToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :charity_id, :integer
  end
end
