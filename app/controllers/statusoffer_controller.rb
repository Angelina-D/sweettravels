class StatusofferController < ApplicationController

  def edit
    @offer = Offer.find(params[:id])
    @offer.status = params[:status].to_i
    @offer.save
    redirect_to request_offer_path(request_id: @offer.request_id, id: @offer.id)
  end
end
