class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @groups = Group.all
  end

  def create
    @event = Event.new(event_params)

    @event.save!
    redirect_to @event
  end

  def show
    @event = Event.find(params[:id])
  end

  private
    def event_params
      params.require(:event).permit(:title, :description, :cost, :email, :start, :end, :group_id)
    end
end
