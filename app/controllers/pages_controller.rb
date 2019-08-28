class PagesController < ApplicationController
  def home
  end

  def profile
   @offers = current_user.offers
   @requests = current_user.requests
  end
end
