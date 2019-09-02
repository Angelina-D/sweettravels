class Sweet < ApplicationRecord
  has_many :requests
  geocoded_by :country
  after_validation :geocode, if: :will_save_change_to_country?

  include PgSearch::Model
  pg_search_scope :search_sweet,
                  against: [ :name, :country, :category, :description ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
