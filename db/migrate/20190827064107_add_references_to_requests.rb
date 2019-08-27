class AddReferencesToRequests < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :charity, foreign_key: true
    add_reference :requests, :user, foreign_key: true
    add_reference :requests, :sweet, foreign_key: true
  end
end
