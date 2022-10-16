class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # byebug
    # Find the cheese using the ID from the URL
    cheese = Cheese.find(params[:id])
    # Return a JSON response
    render json: cheese
  end

end
