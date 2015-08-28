module ChargesHelper

  def current_user_to_charge
    @curr_user = User.find_by(params[:id])
  end

  def user_balance(user)
    user.get_current_balance
  end

end
