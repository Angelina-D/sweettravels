class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :offer, foreign_key: true
    end
  end
end
