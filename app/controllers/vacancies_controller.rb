class VacanciesController < ApplicationController


def index
end

  def show
    @vacancy = Vacancy.find(params[:id])
  end

  def new
    @vacancy = Vacancy.new
  end

  def create
    @vacancy = Vacancy.new(vacancy_params)

    if @vacancy.save
        redirect_to vacancies_path, notice: "The vacancy has been successfully created"
    end 
  end

  def edit
    @vacancy = Vacancy.find(params[:id])
  end

  def update
    @vacancy = Vacancy.find(params[:id])

    if @vacancy.update_attributes(vacancy_params)
      redirect_to vacancies_path, notice: "The vacancy has been successfully updated"
    end
  end

  def destroy
      @vacancy = Vacancy.find(params[:id])
      @vacancy.destroy
  end
def recent
      #@recent_vacancies = Vacancy.most_recent
      if params[:search]
    @vacancies = Vacancy.search(params[:search]).order("created_at DESC")
  else
    @vacancies = Vacancy.all.order('created_at DESC')
  end
  end
def  addjob

end

  
  private
  def vacancy_params
      params.require(:vacancy).permit!
  end
end