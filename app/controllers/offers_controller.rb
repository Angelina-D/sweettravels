class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update]
  before_action :set_request, only: [:new, :edit, :update]

  def show
    @offer = Offer.includes(messages: :user).find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    user = current_user
    request = Request.find(params[:request_id])
    @offer = Offer.new(offer_params)
    @offer.user = user
    @offer.request = request
    if @offer.save
      redirect_to request_offer_path(request_id: @offer.request_id, id: @offer.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    raise
    @offer.update(offer_params)
    if @offer.save
      render :show
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:content, :start_date, :end_date, :pick_up_location, :status)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def set_request
    @request = Request.find(params[:request_id])
  end
end
