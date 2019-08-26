class CreateSweets < ActiveRecord::Migration[5.2]
  def change
    create_table :sweets do |t|

      t.timestamps
    end
  end
end
