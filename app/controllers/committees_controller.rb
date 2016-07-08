class CommitteesController < ApplicationController
  def unesco
    @unesco = load_sbs["unesco"]
    @committee_name = "unesco"
    @container_type = "unesco-background-image"
  end

  def nba
    @nba = load_sbs["nba"]
    @committee_name = "nba"
    @container_type = "nba-background-image"
  end

  def disec
    @disec = load_sbs["disec"]
    @committee_name = "disec"
    @container_type = "disec-background-image"
  end

  def fao
    @fao = load_sbs["fao"]
    @committee_name = "fao"
    @container_type = "fao-background-image"
  end

  def legal
    @legal = load_sbs["legal"]
    @committee_name = "legal"
    @container_type = "legal-background-image"
  end

  def unsc
    @unsc = load_crises["unsc"]
    @committee_name = "unsc"
    @container_type = "unsc-background-image"
  end

  def asiafin
    @asiafin = load_crises["asiafin"]
    @committee_name = "asiafin"
    @container_type = "asiafin-background-image"
  end

  def mormons
    @mormons = load_crises["mormons"]
    @committee_name = "mormons"
    @container_type = "mormons-background-image"
  end

  def mexico
    @mexico = load_crises["mexico"]
    @committee_name = "mexico"
    @container_type = "mexico-background-image"
  end

  def teutonic
    @teutonic = load_crises["teutonic"]
    @committee_name = "teutonic"
    @container_type = "teutonic-background-image"
  end

  def lenin
    @lenin = load_crises["lenin"]
    @committee_name = "lenin"
    @container_type = "lenin-background-image"
  end

  def thailand
    @thailand = load_crises["thailand"]
    @committee_name = "thailand"
    @container_type = "thailand-background-image"
  end

  def maumau
    @maumau = load_crises["maumau"]
    @committee_name = "maumau"
    @container_type = "maumau-background-image"
  end

  def government
    @government = load_jcc["government"]
    @committee_name = "government"
    @container_type = "government-background-image"
  end

  def rebels
    @rebels = load_jcc["rebels"]
    @committee_name = "rebels"
    @container_type = "rebels-background-image"
  end

  def bangladesh
    @bangladesh = load_jcc["bangladesh"]
    @committee_name = "bangladesh"
    @container_type = "bangladesh-background-image"
  end

  def adhoc
    @adhoc = load_crises["adhoc"]
    @committee_name = "adhoc"
    @container_type = "adhoc-background-image"
  end

  def hongkong
    @adhoc = load_crises["hongkong"]
    @committee_name = "hongkong"
    @container_type = "hongkong-background-image"
  end
end
