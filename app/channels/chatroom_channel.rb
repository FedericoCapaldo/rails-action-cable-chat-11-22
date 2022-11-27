class ChatroomChannel < ApplicationCable::Channel
  # run when joining chat
  def subscribed
    stream_from "general"
  end

  # run when leaving chat
  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
