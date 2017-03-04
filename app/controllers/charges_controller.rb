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
    @decimal_amount = 250
    @amount = 500 * 100
    @email = params[:stripeEmail]
    @description = "UCBMUN Sponsorship Payment"
    @munstore = "TRUE"
    if !current_user.nil? && current_user.email != "ucbmun.tech@gmail.com"
      @decimal_amount = current_user.get_current_balance
      @amount = current_user.get_current_balance * 100
      @amount = @amount.to_i
      @description = "Conference Payment for #{current_user.university}"
      @munstore = "FALSE"
    elsif current_user.email == "ucbmun.tech@gmail.com"
      @decimal_amount = current_user.get_current_balance / 100.0
      @amount = current_user.get_current_balance
      @amount = @amount.to_i
      @description = "UCBMUN Merchandise Payment}"
    end

    # Amount in cents
    customer = Stripe::Customer.create(
      :email => @email,
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => @description,
      :currency    => 'usd'
    )

    if !charge.nil? && charge.status == 'succeeded'
      if logged_in?
        current_user.update_balance(@decimal_amount)
      end
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

  def sponsorship
    @amount = 500 * 100
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
