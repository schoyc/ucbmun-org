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
    begin
      if @user.save
        @user.initialize_balance()
        begin
          @user.send_activation_email
          flash[:info] = "Please check your email to confirm your registration and activate your account."
        rescue Net::SMTPAuthenticationError => e
          puts(e.backtrace)
          flash[:info] = "Your registration was successful. However, there was an error with sending the email to activate your account. Please email technology@ucbmun.org to activate your account."
        end

        begin
          @user.send_new_registration_email
        rescue Net::SMTPAuthenticationError => error
          puts(error.backtrace)
        end
        redirect_to root_url
      else
        render 'new'
      end
    rescue ActiveRecord::RecordNotUnique
      @user.errors[:email] = "Address is already associated with a registration."
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # if @user.changed == ['delegates_count']
      #   @user.adjust_balance
      # end
      # @user.update_attribute(:current_balance, 1234)
      flash[:success] = "Profile update #{@user.changed}"

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
