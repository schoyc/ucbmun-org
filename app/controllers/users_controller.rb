class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]

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

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def balance
    @user = User.find(params[:id])
  end

  def registrationerror
  end

  def delegation
    @user = User.find(params[:id])
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

        # Before filters

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
    end

end
