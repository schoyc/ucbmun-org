module ChargesHelper

  def current_user
    @current_user = User.find_by(params[:id])
  end

  def user_balance(user)
    user.balance
  end

end
