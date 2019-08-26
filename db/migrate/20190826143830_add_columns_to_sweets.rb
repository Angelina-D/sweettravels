class AddColumnsToSweets < ActiveRecord::Migration[5.2]
  def change
    add_column :sweets, :name, :string
    add_column :sweets, :country, :string
    add_column :sweets, :description, :text
    add_column :sweets, :category, :string
    add_column :sweets, :picture, :string
  end
end
