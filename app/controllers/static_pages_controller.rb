class StaticPagesController < ApplicationController
  def home
  end

  def committees
  end

  def sponsors
  end

  def contact
  end

  def venue
  end

  def schedule
    load_schedule
  end

  def fees
  end

  def secretariat
    @secretariat_names = secretariat_officers
  end

  def explore
    @attractions_names = attractions_list
  end

  def welcome
  end

end
