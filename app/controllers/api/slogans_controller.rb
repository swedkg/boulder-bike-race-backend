class Api::SlogansController < ApplicationController
  def index
    @slogans = Slogan.all

    render json: @slogans, status: :ok
  end
end
