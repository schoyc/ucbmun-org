class CommitteesController < ApplicationController
  def specpol
    @specpol = load_sbs["specpol"]
    @committee_name = "specpol"
    @container_type = "specpol-background-image"
  end

  def nfl
    @nfl = load_sbs["nfl"]
    @committee_name = "nfl"
    @container_type = "nfl-background-image"
  end

  def disec
    @disec = load_sbs["disec"]
    @committee_name = "disec"
    @container_type = "disec-background-image"
  end

  def wsf
    @wsf = load_sbs["wsf"]
    @committee_name = "wsf"
    @container_type = "wsf-background-image"
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

  def redcliff
    @redcliff = load_crises["redcliff"]
    @committee_name = "redcliff"
    @container_type = "redcliff-background-image"
  end

  def pilate
    @pilate = load_crises["pilate"]
    @committee_name = "pilate"
    @container_type = "pilate-background-image"
  end

  def obama
    @obama = load_crises["obama"]
    @committee_name = "obama"
    @container_type = "obama-background-image"
  end

  def thatcher
    @thatcher = load_crises["thatcher"]
    @committee_name = "thatcher"
    @container_type = "thatcher-background-image"
  end

  def colombia
    @colombia = load_crises["colombia"]
    @committee_name = "colombia"
    @container_type = "colombia-background-image"
  end

  def marcos
    @marcos = load_crises["marcos"]
    @committee_name = "marcos"
    @container_type = "marcos-background-image"
  end

  def darkweb
    @darkweb = load_crises["darkweb"]
    @committee_name = "darkweb"
    @container_type = "darkweb-background-image"
  end

  def rhodesia
    @rhodesia = load_jcc["rhodesia"]
    @committee_name = "rhodesia"
    @container_type = "rhodesia-background-image"
  end

  def zanu
    @zanu = load_jcc["zanu"]
    @committee_name = "zanu"
    @container_type = "zanu-background-image"
  end

  def zapu
    @zapu = load_jcc["zapu"]
    @committee_name = "zapu"
    @container_type = "zapu-background-image"
  end

  def adhoc
    @adhoc = load_crises["adhoc"]
    @committee_name = "adhoc"
    @container_type = "adhoc-background-image"
  end
end
