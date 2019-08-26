class AddColumnsToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :content, :text
    add_column :offers, :start_date, :date
    add_column :offers, :end_date, :date
    add_column :offers, :pick_up_location, :string
    add_column :offers, :status, :integer
    add_reference :offers, :users, foreign_key: true
    add_reference :offers, :requests, foreign_key: true
  end
end
