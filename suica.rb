# frozen_string_literal: true

class Suica
  attr_accessor :cash

  def initialize(cash: 500)
    @cash = cash
  end

  def self.input
    puts '100円以上の任意の金額をチャージできます'
    print 'チャージ金額を入力してください >'
    @@input = gets.to_i
  end

  def charge_suica
    return @cash += @@input if @@input >= 100

    cash
    puts '100円以下のためチャージ出来ません'
  end

  def show_balance
    puts "現在の残高は#{cash}円です"
  end
end
