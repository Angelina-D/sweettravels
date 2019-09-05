class Request < ApplicationRecord
  belongs_to :charity
  belongs_to :sweet
  belongs_to :user
  has_many :offers

  include PgSearch::Model
  pg_search_scope :search_sweet_name_and_country,
                  against: [],
                  associated_against: {
                    sweet: [:name, :country]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  pg_search_scope :search_request_per_city,
                  against: [],
                  associated_against: {
                    user: [:city]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  DONATION = [5, 10, 15, 20]

  # monetize :price_cents
  # monetize :donation_cents

  def confirmed_offers
    offers.where(status: :confirmed)
  end

  def offers_to_display
    return confirmed_offers if confirmed_offers.present?
    return offers
  end
end
