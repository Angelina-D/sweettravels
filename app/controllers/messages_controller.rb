class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @offer = Offer.find(params[:offer_id])
    @message.offer = @offer
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html { redirect_to request_offer_path(@offer) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "offer/show" }
        format.js
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :offer_id)
  end
end
