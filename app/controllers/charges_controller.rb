class ChargesController < ApplicationController
  def new
    @curr_user = current_user
    @amount = user_balance @curr_user
    @amount *= 100
  end

  def create
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
      @curr_user.balance -= charge.amount / 100
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
