class EventAttendeesController < ApplicationController
  def create
    @event = Event.find(params[:event_attendee][:attendee_event_id])
    current_user.event_attendees.create!(attendee_event_id: @event.id)
    redirect_to @event
  end

  def destroy
  end
end
