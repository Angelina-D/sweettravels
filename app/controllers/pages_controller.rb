class PagesController < ApplicationController
  def home
  end

  def profile
   @offers = current_user.offers
   @offers_pend = offers_pending
   @offers_arch = offers_archived
   @offers_conf = offers_confirmed
   @offers_canc = offers_canceled
   @requests = current_user.requests
   @user = current_user
   @sum_requests = sum_requests
   @sum_confirmed_offers = sum_confirmed_offers
   @sum_donation = sum_charity
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
      offer.request.donation_cents += sum_donation
    end
    sum_donation
  end

  def offers_pending
    offers_pend = current_user.offers.where(status: :pending)
  end

  def offers_archived
    offers_arch = current_user.offers.where(status: :archived)
  end

  def offers_confirmed
    offers_conf = current_user.offers.where(status: :confirmed)
  end

  def offers_canceled
    offers_canc = current_user.offers.where(status: :canceled)
  end
end
