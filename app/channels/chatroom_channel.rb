class ChatroomChannel < ApplicationCable::Channel
  # run when joining chat
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end

  # run when leaving chat
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
