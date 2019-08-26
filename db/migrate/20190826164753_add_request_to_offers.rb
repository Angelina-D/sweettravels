class AddRequestToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :request_id, :integer
  end
end
