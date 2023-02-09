# frozen_string_literal: true

class List
  attr_reader :items

  def initialize(items:)
    @items = items
  end
 
  #ジュースリスト表示
  def display
    puts '*' * 23
    @items.each.with_index(1) do |item, index|
      puts "#{index.to_s.rjust(2)}. #{item.name.mb_ljust(11)}:#{item.price}円"
    end
    puts '*' * 23
  end

   #現在の在庫状況
  def inventory
    puts '*' * 23
    @items.each.with_index(1) do |item, index|
      puts "#{index.to_s.rjust(2)}. #{item.name.mb_ljust(11)}:#{item.stock}本"
    end
    puts '*' * 23
  end
end
