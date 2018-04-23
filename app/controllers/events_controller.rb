class EventsController < ApplicationController
  def index
    @events = Event.all
    render 'index'
  end

  def new
    @event = Event.new
    render 'new'
  end
  
  def create
    @event = Event.create({
      name: params['event']['name'],
      details: params['event']['details'],
      location: params['event']['location']
    })
    redirect_to events_path
  end

  def edit
    @event = Event.find_by_id(params[:id])
    render 'edit'
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.update({
      name: params['event']['name'],
      details: params['event']['details'],
      location: params['event']['location']
    })
    redirect_to events_path
  end
end