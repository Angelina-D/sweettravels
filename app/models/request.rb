class Request < ApplicationRecord
  belongs_to :charity
  belongs_to :sweet
  belongs_to :user
  has_many :offers

  include PgSearch::Model
  pg_search_scope :search_sweet_name_and_country,
                  against: [],
                  associated_against: {
                    sweet: [:name, :country ]
                  },
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }

  DONATION = [5, 10, 15, 20]
end
