class PagesController < ApplicationController
  def home
  end

  def profile
   @offers = current_user.offers
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
  end

  def offers_archived
  end

  def offers_confirmed
  end
end
