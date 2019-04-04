class LanguagesController < ApplicationController
    def new
      @language = Language.new
    end
    
    # create 
    def create
      language = Language.new
      language.name = params[:language][:name]
      language.save
      redirect_to languages_path
    end
    
    # list all 
    def index
      @languages = Language.all
    end
    
    # send back to edit
    def edit
      @language = Language.find(params[:id])
    end
    
    # update 
    def update
      language = Language.find(params[:id])
      language.name = params[:language][:name]
      language.save
      redirect_to languages_path      
    end
    
    # delete 
    def remove
      language = Language.find(params[:language_id])
      language.destroy
      redirect_to languages_path
    end
end
