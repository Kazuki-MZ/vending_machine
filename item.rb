# frozen_string_literal: true

class Item
  attr_reader :name, :price
  attr_accessor :stock

  def initialize(name: 'ペプシ', price: 150, stock: 5)
    @name = name
    @price = price
    @stock = stock
  end
end
