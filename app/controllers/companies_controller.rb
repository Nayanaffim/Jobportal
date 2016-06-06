class CompaniesController < ApplicationController
	before_filter :authenticate_user!
 def index

  end

  def show
    @Company = Company.find(params[:id])
  end

  def new
    @Company = Company.new
  end

  def create
    @Company = Company.new(Company_params)

    if @Company.save
        redirect_to vacancies_path, notice: "The Company has been successfully created"
    end 
  end

  def edit
    @Company = Company.find(params[:id])
  end

  def update
    @Company = Company.find(params[:id])

    if @Company.update_attributes(Company_params)
      redirect_to vacancies_path, notice: "The Company has been successfully updated"
    end
  end

  def destroy
      @Company = Company.find(params[:id])
      @Company.destroy
  end
def recent
      @recent_vacancies = Company.most_recent
  end
  
  private
  def Company_params
      params.require(:Company).permit!
  end
 end