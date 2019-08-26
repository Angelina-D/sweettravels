class RemoveCharitiesFromRequest < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :charities_id, :integer
  end
end
