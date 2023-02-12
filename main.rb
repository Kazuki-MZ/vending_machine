# frozen_string_literal: true

require_relative 'suica'
require_relative 'item'
require_relative 'vending'

suica = Suica.new
# Suicaチャージ処理
val = 0
suica.charge_suica(val)

items = [
  Item.new(name: 'ペプシ', price: 150, stock: 5),
  Item.new(name: 'モンスター', price: 230, stock: 5),
  Item.new(name: 'いろはす', price: 120, stock: 5)
]
# 在庫補充
number = 0
# 0:ペプシ  1:モンスター  2:いろはす
items[1].add_stock(number)
# ジュース選択
# 0:ペプシ  1:モンスター  2:いろはす
item = items[1]
# 購入処理
vending = Vending.new
vending.items_info(items)
vending.drink_purchase(suica, item)
