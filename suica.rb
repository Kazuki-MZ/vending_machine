# frozen_string_literal: true

class Suica
  attr_reader :cash

  def initialize(cash: 500)
    @cash = cash
  end

  def charge_suica(val)
    if val >= 100
      @cash += val
    else
      puts '100円以下のためチャージ出来ません'
    end
    @cash
  end

  def balance
    @cash
  end
end
