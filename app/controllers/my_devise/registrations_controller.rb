class MyDevise::RegistrationsController < Devise::RegistrationsController
   
    def show
        @users = User.all
    end   
    # list all 
    def index
        @users = User.all
    end

    def new
      super
      # @user = User.new
      # @userlanguage = UserLanguage.new
    end
    
    def add
      #  Add languages to user_languages

    end
  
    def create
      # add custom create logic here
    end
  
    def update
      super
    end
end 