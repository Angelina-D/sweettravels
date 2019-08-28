class AddDefaultToStatusAAgain < ActiveRecord::Migration[5.2]
  def change
    change_column_default :offers, :status, to: 2
  end
end
