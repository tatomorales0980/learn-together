class HomeController < ApplicationController
    before_action :authenticate_user!
    # send back form to create   
    def new
        @languages = Language.all
    end
    
    # create 
    def create
        @languages = Language.all 
    end
    
    # list all 
    def index
        @users = User.all
        @languages = Language.all
    end
   
   #Show the students related with the class 
    def show 
        @user = User.find(params[:id])
    end
    
    def matches
        @matches = User.all
    end
end
