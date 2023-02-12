# frozen_string_literal: true

require_relative 'item'
class Vending
  attr_reader :inventory, :balance, :sales

  def initialize
    @inventory = 0
    @balance = 0
    @sales = 0
  end

  def items_info(items)
    items.map do |item|
      [item.name, { price: [item.price], stock: [item.stock] }]
    end
  end

  def drink_purchase(suica, item)
    return puts 'お金が足りません。' if suica.cash < item.price
    return puts '売り切れです' if item.stock <= 0

    @inventory = item.stock - 1
    @sales += item.price
    @balance = suica.cash - item.price
  end

  def sales_total
    sales
  end
end
