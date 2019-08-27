class Request < ApplicationRecord
  belongs_to :charity, :sweet, :user
  has_many :offers
end
