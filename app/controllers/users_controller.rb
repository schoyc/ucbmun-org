class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    if current_user.nil?
      @user = User.new
    else
      redirect_to loggedinregistration_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Your account has been created!"
      redirect_to @user
      send_new_registration_email @user
    else
      render 'new'
    end
  end

  def balance
    @user = User.find(params[:id])
  end

  def registrationerror
  end


  def index
    @registrations = User.all
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :university, :password, :password_confirmation,
                                    :username, :phone, :address, :city, :state, :zip, :country, :delegates_count)
    end

end
