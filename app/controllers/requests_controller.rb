class RequestsController < ApplicationController
  before_action :find_request, only: [:show, :destroy]
  def index
    @requests = Request.all
  end

  def show
    @request = Request.find(params[:id])
    @offers  = Offer.where(request_id: @request.id)
  end

  def new
    @request = Request.new
    @charities = Charity.all
    @candies = Sweet.all
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      redirect_to request_path(@request)
    else
      render :new
    end
  end

  def destroy
    offers = Offer.where(request_id: @request.id)
    offers.each do |offer|
      offer.destroy
    end
    @request.destroy
    redirect_to root_path
  end

  private

  def find_request
    @request = Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:description, :price_cents, :donation_cents, :quantity, :charity_id, :sweet_id)
  end
end
