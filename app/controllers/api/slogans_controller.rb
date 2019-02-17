class Api::SlogansController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @slogans = Api::Slogan.all
    render json: @slogans, status: :ok
  end

  def create
    @trace = Api::Slogan.find_by(email: slogan_params[:email])
    puts "trace: ", @trace
    if @trace.nil?
      puts "not found, write to db"
      @new_slogan = Api::Slogan.new(slogan_params)
      if @new_slogan.save
        head (:created)
      end
    else
      puts "already there, send error message"
      head(:ok)
    end
  end

  def slogan_params
    params.permit(:first_name, :last_name, :email, :slogan)
  end
end
