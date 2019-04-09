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
    
    # send back to edit
    def edit

    end
    
    # update 
    def update
    end
    
    # delete 
    def delete
    end
   
   #Show the students related with the class 
    def show    
    end
end
