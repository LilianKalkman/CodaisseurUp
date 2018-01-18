class PagesController < ApplicationController

  def home
    @event = Event.first
  end

  def about
  end

end
