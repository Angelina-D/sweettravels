class OrdersController < ApplicationController
  def create
    @request = Request.find(params[:request_id])
    @offers = Offer.where(request_id: @request.id)
    @offers.each do |offer|
      @offer = offer if offer.status == 'confirmed'
    end
    # @offer = @offers.status == 'confirmed'
    @order = Order.create!(candy_sku: @request.sweet.name, offer: @offer, amount: @request.price_cents + @request.donation_cents, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(@order, request: @request)

  end

  def show
    @order = Order.find(params[:id])
  end
end
