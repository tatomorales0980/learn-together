class MyDevise::RegistrationsController < Devise::RegistrationsController
   
    def show
        @users = User.all
    end   
    # list all 
    def index
        @users = User.all
    end

    def sing_up
       
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
      user = User.new
      user.email = params[:user][:email]
      user.password = params[:user][:password]
      user.picture = params[:user][:picture]
      user.first_name = params[:user][:first_name]
      user.last_name = params[:user][:last_name]
      user.gender = params[:user][:gender]
      user.age = params[:user][:age]
      user.street_address = params[:user][:street_address]
      user.city = params[:user][:city]
      user.state = params[:user][:state]
      user.country = params[:user][:country]
      user.nationality = params[:user][:nationality]
      user.nativelanguage = params[:user][:nativelanguage]
      user.nativelevel = params[:user][:nativelevel]
      user.learnlanguage = params[:user][:learnlanguage]
      user.learninglevel = params[:user][:learninglevel]
      user.introduction = params[:user][:introduction]
      user.save
      redirect_to root_path
    end
  
    def update
      super
    end
end 