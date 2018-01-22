class PagesController < ApplicationController

  def home
    @event = Event.first
    @event_active = Event.active
  end

  def about
  end

end
