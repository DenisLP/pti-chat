class RoomChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'room_channel'
    stream_from "room_channel_user_#{message_user.id}"
    stream_from 'framingham'
    stream_from 'milford'
    
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
