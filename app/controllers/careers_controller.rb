class CareersController < ApplicationController
  def index
  end
  def application
  end
  def create
    @career = Career.new(career_params)
    if @career.save
        redirect_to @career
    else
        render 'new'
    end
  end
  def new
    @career = Career.new
  end
    
  private
    def career_params
        params.require(:career).permit(:first, :last, :submitDate, :phone, :email, :info)
    end
    
end
