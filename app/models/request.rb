class Request < ApplicationRecord
  belongs_to :charity
  belongs_to :sweet
  belongs_to :user
  has_many :offers
end
