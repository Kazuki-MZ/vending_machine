# frozen_string_literal: true

class User
  def self.choice
    print 'choose > '
    @@choice = gets.to_i
  end

  def choice(items)
    items[@@choice - 1]
  end
end
