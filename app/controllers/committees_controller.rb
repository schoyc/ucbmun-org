class CommitteesController < ApplicationController
  def specpol
    @specpol = load_sbs["specpol"]
  end

  def nfl
    @nfl = load_sbs["nfl"]
  end

  def disec
    @disec = load_sbs["disec"]
  end

  def wsf
    @wsf = load_sbs["wsf"]
  end

  def legal
    @legal = load_sbs["legal"]
  end

  def unsc
    @unsc = load_crises["unsc"]
  end

  def tang
    @tang = load_crises["tang"]
  end

  def pilate
    @pilate = load_crises["pilate"]
  end

  def obama
    @obama = load_crises["obama"]
  end

  def wikileaks
    @wikileaks = load_crises["wikileaks"]
  end

  def colombia
    @colombia = load_crises["colombia"]
  end

  def marcos
    @marcos = load_crises["marcos"]
  end

  def darkweb
    @darkweb = load_crises["darkweb"]
  end

  def rhodesia
    @rhodesia = load_jcc["rhodesia"]
  end

  def zanu
    @zanu = load_jcc["zanu"]
  end

  def zapu
    @zapu = load_jcc["zapu"]
  end

  def adhoc
    @adhoc = load_crises["adhoc"]
  end
end
