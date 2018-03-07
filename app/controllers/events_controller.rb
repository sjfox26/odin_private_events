class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new(event_params)
  end

  def create
    @event = current_user.created_events.build(event_params)
  end

  def show
    @event = Event.find(params[:id])
  end

    private
    def event_params
      params.require(:event).permit(:name, :date, :location, :description)
    end
end
