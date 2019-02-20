class Api::SlogansController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @slogans = Api::Slogan.all
    render json: @slogans, status: :ok
  end

  # TODO: remove validations from here
  # if not validate send JSON

  def create
    # @trace = Api::Slogan.find_by(email: slogan_params[:email])
    puts "trace: ", @trace
    @new_slogan = Api::Slogan.new(slogan_params)
    # if @trace.nil?
    # @new_slogan = Api::Slogan.new(slogan_params)
    if @new_slogan.save
      puts "not found, write to db"
      head (:created)
      # end
    else
      puts "already there, send error message"
      render json: @new_slogan.errors.messages, status: :ok
      # head(:ok)
    end
  end

  def slogan_params
    params.permit(:first_name, :last_name, :email, :slogan)
  end
end
