class Api::GreetingsController < ApplicationController
  def index
    random_message = Greeting.order('RANDOM()').first
    render json: { greeting: random_message&.content }
  end
end
