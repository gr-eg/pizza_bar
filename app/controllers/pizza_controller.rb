class PizzaController < ApplicationController
  # GET /pizza
  def index
    @pizzas = Pizza.all
    render json: @pizzas
  end

  # GET /pizza/1
  def show
    @pizza = Pizza.find(params[:id])
    render json: @pizza
  end

  # POST /pizza
  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      render json: @pizza, status: :created
    else
      render json: @pizza.errors, status: :unprocessable_entity 
    end
  end

  # Only allow the white list through.
  def pizza_params
    params.require(:pizza).permit(:name, ingredients: [])
  end
end
