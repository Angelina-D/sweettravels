class Message < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  after_create :broadcast_message

  def from?(a_user)
    a_user == user
  end

  def broadcast_message
    ActionCable.server.broadcast("offer_#{offer.id}", {
        message_partial: ApplicationController.renderer.render(partial: "messages/message", locals: { message: self, user_is_message_author: false }),
        current_user_id: user.id
    })
  end
end
