class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @houses = @user.houses.paginate(page: params[:page])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Bienvenido a airbnb ITAM!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  private

    def user_params
      params.require(:user).permit(:nombre, :email, :fecha, :password, :password_confirmation, :lessee)
    end
    
    def houseGallery
      @user = current_user
      @houses = @user.houses.paginate(page: params[:page])
    end
  
  
  def lesseeChange
    @user=current_user
    @user.lessee=true
    redirect_to "/miCuenta"
  end
  
  
end
