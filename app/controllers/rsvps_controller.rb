class RsvpsController < ApplicationController
  def index
    @rsvps = Event.find_by_id(params[:id]).rsvps
    render 'index'
  end

  def new
    @rsvp = Rsvp.new(event: Event.find_by_id(params[:id]))
  end
  
  def create
    @rsvp = Rsvp.create({
      name: params['rsvp']['name'],
      will_attend: params['rsvp']['will_attend'],
      event: Event.find_by(id: params[:id])
    })
    redirect_to rsvps_path
  end
end
