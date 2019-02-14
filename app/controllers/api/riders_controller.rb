class Api::RidersController < ApplicationController
  def index
    @riders = Rider.all

    # @riders.each {
    #   |rider|
    #   puts rider.inspect, url_for(rider.picture)
    # }

    render json: @riders.map { |rider|
      rider.as_json.merge({image: url_for(rider.picture)})
    }, status: :ok
  end
end
