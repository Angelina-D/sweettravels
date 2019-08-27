class AddReferencesToOffers < ActiveRecord::Migration[5.2]
  def change
    add_reference :offers, :user, foreign_key: true
    add_reference :offers, :request, foreign_key: true
  end
end
