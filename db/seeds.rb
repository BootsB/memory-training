
suits = ['hearts', 'diamonds', 'clubs', 'spades']
values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

suits.each do |suit|
  values.each do |value|
    Card.create!(suit: suit, value: value)
    puts "created #{value} of #{suit}"
  end
end
