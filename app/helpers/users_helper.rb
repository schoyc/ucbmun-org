module UsersHelper
  def send_new_registration_email(user)
    require 'mail'

    options = { :address              => "smtp.gmail.com",
                :port                 => 587,
                :user_name            => ENV['REGISTER_EMAIL'],
                :password             => ENV['REGISTER_PASSWORD'],
                :authentication       => 'plain',
                :enable_starttls_auto => true  }



    Mail.defaults do
      delivery_method :smtp, options
    end

    email_text = "New UCBMUN Registration!

    University: #{user.university}
    Delegates: #{user.delegates_count}
    Name: #{user.name}
    Email: #{user.email}
    Phone: #{user.phone}
    Address: #{user.address}
    #{user.city}, #{user.state} #{user.zip}
    #{user.country}
    Date: #{Time.now.inspect}

    Thanks,
    Steven "


    Mail.deliver do
           to 'registration@ucbmun.org'
         from 'ucbmun.register@gmail.com'
      subject 'New UCBMUN XX Registration'
         body email_text
    end
  end

  def get_full_address(user)
    "#{user.address} \n #{user.city}, #{user.state} #{user.zip} \n #{user.country}"
  end
end
