class RequestsController < ApplicationController
  before_action :find_request, only: [:show, :destroy]
  include MoneyConverterHelper
  def index
    if params[:search_sweet_name_and_country] == ''
      @requests = Request.all
    elsif params[:search_sweet_name_and_country]
      @requests = Request.search_sweet_name_and_country(params[:search_sweet_name_and_country])
    else
      @requests = Request.all
    end

    @markers = geocode_request(@requests)
  end

  def show
    @request = Request.find(params[:id])
    @offers  = Offer.where(request_id: @request.id)
  end

  def new
    @request = Request.new()
    @request.sweet_id = params[:sweet_id]
    @charities = Charity.all
    @candies = Sweet.all
  end

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    if @request.save
      @request.donation_cents = cent_to_euro(request_params["donation_cents"])
      @request.price_cents = cent_to_euro(request_params["price_cents"])
      @request.save
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

  def geocode_request(requests)
    requests.map do |request|
      {
        lat: request.sweet.latitude,
        lng: request.sweet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { request: request })
      }
    end
  end
end
