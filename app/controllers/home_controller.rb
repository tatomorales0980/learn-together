class HomeController < ApplicationController
    before_action :authenticate_user!
    # send back form to create   
    def new
    end
    
    # create 
    def create
    end
    
    # list all 
    def index
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
        @user = User.find(params[:id])
    end
    
    def matches
        @matches = User.all
        
    end
        

    
end
