class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @event_attendees = @event.attendees
  end

    private
    def event_params
      params.require(:event).permit(:name, :date, :location, :description)
    end
end
