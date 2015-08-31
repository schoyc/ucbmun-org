class ChargesController < ApplicationController
  def new
    # current_user.charges
    @amount = current_user.get_current_balance * 100
    @amount = @amount.to_i
  end

  def create
    # current_user.charges
    @decimal_amount = current_user.get_current_balance
    @amount = current_user.get_current_balance * 100
    @amount = @amount.to_i
    # Amount in cents
    customer = Stripe::Customer.create(
      :email => "#{current_user.email}",
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "Conference payment for #{current_user.university}",
      :currency    => 'usd'
    )

    if !charge.nil? && charge.status == 'succeeded'
      #@curr_user.set_current_balance(-10000)
      current_user.set_current_balance(current_user.get_current_balance - @decimal_amount)
      #current_user.update_attribute(:current_balance, -10000)
      # current_user.charge_list.push({item: "Delegation Payment",
      #                       price: @amount / 100 * -1 ,
      #                       quantity: 1,
      #                       date: Time.now.inspect})

    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
