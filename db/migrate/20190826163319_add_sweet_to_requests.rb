class AddSweetToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :sweet_id, :integer
  end
end
