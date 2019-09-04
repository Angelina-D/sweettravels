class RemoveRequestFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :request, foreign_key: true
  end
end
