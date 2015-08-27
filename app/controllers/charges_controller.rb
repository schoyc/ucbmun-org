class ChargesController < ApplicationController
  def new
    @curr_user = current_user
    @curr_user.charges
    @amount = @curr_user.get_current_balance
    @amount *= 100
  end

  def create
    @curr_user = current_user
    @curr_user.charges
    @amount = user_balance @curr_user
    @amount *= 100
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
      @curr_user.set_current_balance(@curr_user.get_current_balance - charge.amount / 100)
      @curr_user.charge_list.push({item: "Delegation Payment",
                            price: @amount / 100 * -1 ,
                            quantity: 1,
                            date: Time.now.inspect})
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
