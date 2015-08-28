class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Your account has been created!"
      @user.init_balance
      redirect_to @user
    else
      render 'new'
    end
  end

  def balance
    @user = User.find(params[:id])
    @user.charges
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :university, :password, :password_confirmation,
                                    :username, :phone, :address, :city, :state, :zip, :country, :delegates_count)
    end

end
