class TacosController < ApplicationController

  def index
    @taco = Taco.all
    render json: @taco
  end

  def show
    @taco = Taco.all
    render json: @taco
  end

  def new
    @taco = Taco.new
  end

  def create
    @taco = Taco.new(taco_params)
    @taco.save

    render json: @taco
  end

  def destroy
    @taco = Taco.find(params[:id])
    @taco.destroy
    render json: @taco
  end

 private
   def taco_params
     params.require(:taco).permit(:meat, :rice, :salsa, :notes)
   end
end
