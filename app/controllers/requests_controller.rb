class RequestsController < ApplicationController
  before_action :find_request, only: [:show, :destroy]
  def index
    @requests = Request.all
  end

  def show
  end

  def new
    @request = Request.new
    @charities = Charity.all
  end

  def create
    @request = Request.new
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
    params.require(:request).permit()
  end
end
