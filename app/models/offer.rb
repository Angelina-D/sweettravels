class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  enum status: [ :confirmed, :pending, :canceled ]
end
