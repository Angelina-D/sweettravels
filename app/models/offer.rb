class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  has_many :messages
  enum status: [ :confirmed, :pending, :canceled, :archived ]
end
