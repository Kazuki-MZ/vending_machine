# frozen_string_literal: true

class Vending
    attr_accessor :sales
  def initialize
    @sales = 0
  end

  def drink_purchase(suica, item)
    return puts 'お金が足りません。' if suica.cash < item.price
    return puts '売り切れです' if item.stock <= 0

    item.stock -= 1
    @sales += item.price
    suica.cash -= item.price

    puts 'お買い上げありがとうございます。'
  end

  def show_sales
    puts "自動販売機の売り上げは#{sales}円です"
  end
end
