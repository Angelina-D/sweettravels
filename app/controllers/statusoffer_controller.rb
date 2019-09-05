class StatusofferController < ApplicationController

  def edit
    @offer = Offer.find(params[:id])
    @offer.status = params[:status].to_i
    @offer.save
    redirect_to profile_path(anchor: "id_#{@offer.id}")
  end
end
