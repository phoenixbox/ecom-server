module V1
  class EventsController < ApplicationController
    def index
      @events = Event.all
      render json: @events, each_serializer: EventSerializer, root: nil
    end
  end
end
