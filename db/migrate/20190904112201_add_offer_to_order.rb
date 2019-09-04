class AddOfferToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :offer, foreign_key: true
  end
end
