class ChargesController < ApplicationController
  def new
    # current_user.charges
    if current_user.nil?
      redirect_to login_path, :flash => { :success => "Go back to ucbmun.herokuapp.com/conferencepayment" }
      return
    end
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
  end

  def show
    @shirt = params[:shirt]
    @mug = params[:mug]
    @shotglass = params[:shotglass]
    @folder = params[:folder]
    @candygram = params[:candygram]
    @donation = params[:donation]
    @email = params[:email]
    subtotal = @shirt.to_i * 15 + @mug.to_i * 15 + @shotglass.to_i * 7 + @folder.to_i * 5 + @candygram.to_i * 3 + @donation.to_i * 1
    @amount = subtotal * 100
    current_user.set_balance(@amount)
  end


  def createmunstore
    #subtotal = @shirt.to_i * 15 + @mug.to_i * 15 + @shotglass.to_i * 7 + @folder.to_i * 5 + @candygram.to_i * 3 + @donation.to_i * 1
    #@amount = subtotal * 100
    # Amount in cents
    amount = current_user.get_current_balance.to_i
    customer = Stripe::Customer.create(
      :email => @email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "UCBMUN Merchandise Payment",
      :currency    => 'usd'
    )

    if !charge.nil? && charge.status == 'succeeded'
      redirect_to "/paymentsuccess"

    end
  end



  # def mobile
  #     @amount = params[:amount] * 100
  #     @amount = @amount.to_i
  #     @token = params[:stripeToken]
  #     @email = params[:email]
  #
  #     # Amount in cents
  #     customer = Stripe::Customer.create(
  #       :email => @email,
  #       :card  => @token
  #     )
  #
  #     charge = Stripe::Charge.create(
  #       :customer    => customer.id,
  #       :amount      => @amount,
  #       :description => "Merch payment for #{@email}",
  #       :currency    => 'usd'
  #     )
  #   end
  #
  #
  # rescue Stripe::CardError => e
  #   flash[:error] = e.message
  #   redirect_to charges_path
  # end

end
