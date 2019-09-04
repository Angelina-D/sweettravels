class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :candy_sku
      t.integer :amount
      t.jsonb :payment
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
