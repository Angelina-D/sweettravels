class AddCoordinatesToSweet < ActiveRecord::Migration[5.2]
  def change
    add_column :sweets, :latitude, :float
    add_column :sweets, :longitude, :float
  end
end
