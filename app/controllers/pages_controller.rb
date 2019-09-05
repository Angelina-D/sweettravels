class PagesController < ApplicationController
  include MoneyConverterHelper

  def home
  end

  def profile
   @offers = current_user.offers
   @offers_pend = offers_pending
   @offers_arch = offers_archived
   @offers_canc = offers_canceled
   @requests = current_user.requests
   @user = current_user
   @sum_requests = sum_requests
   @sum_confirmed_offers = sum_confirmed_offers
   @sum_donation = sum_charity

  end

  def offers_confirmed(request)
    confirmed_offer = 0
      request.offer.each do |offer|
        if offer.confirmed?
          confirmed_offer = offer.id
        end
    end
    confirmed_offer
  end

  private

  def sum_requests
    current_user.requests.count
  end

  def sum_confirmed_offers
    sum_offers = current_user.offers.where(status: :confirmed)
    sum_offers.count
  end

  def sum_charity
    sum_confirmed = current_user.offers.where(status: :confirmed)
    sum_donation = 0
    sum_confirmed.each do |offer|
      sum_donation += offer.request.donation_cents
    end
    convert_currency(sum_donation)
  end

  def offers_pending
    offers_pend = current_user.offers.where(status: [:pending, :confirmed])
    offers_pend.order(:status)
  end

  def offers_archived
    offers_arch = current_user.offers.where(status: :archived)
    offers_arch.order(:created_at)
  end

  def offers_canceled
    offers_canc = current_user.offers.where(status: :canceled)
    offers_canc.order(:created_at)
  end


end
