class CompaniesController < ApplicationController

  def index
    @companies = Company.all

  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    company = Company.create(company_params)
    redirect_to "/companies"
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    company = Company.find(params[:id])
    company.update(company_params)
    redirect_to "/companies/#{company.id}"
  end

  def destroy
    company = Company.find(params[:id])
    company.destroy
    redirect_to "/companies"
  end

  private
    def company_params
      params.require(:company).permit(:name, :overview, :image, :industry, :CEO, :location)
    end
end
