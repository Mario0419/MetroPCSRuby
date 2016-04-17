class CareersController < ApplicationController
  def index
      @career = Career.new
  end
    def show
        @career = Career.find(params[:id])
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
