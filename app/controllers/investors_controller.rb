class InvestorsController < ApplicationController

  def index
    @investors = Investor.all

  end

  def show
    @investor = Investor.find(params[:id])
  end

  def new
    @investor = Investor.new
  end

  def create
    investor = Investor.create(investor_params)
    redirect_to "/investors"
  end

  private
    def investor_params
      params.require(:investor).permit(:name, :image, :education, :age, :experience, :blurb, :location)
    end
end
