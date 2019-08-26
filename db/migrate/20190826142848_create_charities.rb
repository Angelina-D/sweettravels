class CreateCharities < ActiveRecord::Migration[5.2]
  def change
    create_table :charities do |t|

      t.timestamps
    end
  end
end
