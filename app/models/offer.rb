class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :request
  has_many :messages, dependent: :destroy
  enum status: [ :confirmed, :pending, :canceled, :archived ]
end
