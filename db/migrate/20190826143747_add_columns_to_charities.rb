class AddColumnsToCharities < ActiveRecord::Migration[5.2]
  def change
    add_column :charities, :name, :string
    add_column :charities, :cause, :string
    add_column :charities, :picture, :string
    add_column :charities, :description, :text
  end
end
