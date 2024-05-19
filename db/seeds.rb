Association.destroy_all
Card.destroy_all
User.destroy_all

suits = ['hearts', 'diamonds', 'clubs', 'spades']
values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

suits.each do |suit|
  values.each do |value|
    Card.create!(suit: suit, value: value)
    puts "created #{value} of #{suit.capitalize}"
  end
end

User.create!(email: "example@example.co.uk", password: "password")
puts "created example@example.co.uk"
