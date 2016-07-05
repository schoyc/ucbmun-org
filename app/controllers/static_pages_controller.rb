class StaticPagesController < ApplicationController
  def index
  end

  def home
    @background_image = "hilton1.jpg"
    @container_type = "home-page"
    @attractions = Attraction.all
  end

  def committees
    @sb_committees = load_sbs
    @crisis_committees = load_crises
    @jcc_committees = load_jcc
  end

  def sponsors
  end

  def contact
  end

  def venue
    @container_type = "venue-page"
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

  def pdftest
  end

  def registrationclosed
  end

  def resources
  end


end
