class OfferChannel < ApplicationCable::Channel
  def subscribed
    stream_from "offer_#{params[:offer_id]}"
  end
end
