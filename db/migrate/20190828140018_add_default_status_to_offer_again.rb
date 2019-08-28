class AddDefaultStatusToOfferAgain < ActiveRecord::Migration[5.2]
  def change
    change_column_default :offers, :status, 1
  end
end
