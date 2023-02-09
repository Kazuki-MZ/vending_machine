# frozen_string_literal: true

require_relative 'suica'
require_relative 'item'
require_relative 'vending'
require_relative 'list'
require_relative 'string'
require_relative 'user'

# Suica残高表示
suica = Suica.new
suica.show_balance
# Suicaチャージ処理
Suica.input
suica.charge_suica
suica.show_balance

# ジュース在庫作成
items = [Item.new(name: 'ペプシ', price: 150, stock: 5),
         Item.new(name: 'モンスター', price: 230, stock: 1),
         Item.new(name: 'いろはす', price: 120, stock: 5)]

# 購入できるジュース表示
list = List.new(items: items)
list.display

# ジュース選択
user = User.new
User.choice
item = user.choice(list.items)

# 購入処理
vending = Vending.new
vending.drink_purchase(suica, item)




