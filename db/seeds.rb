Association.destroy_all
Card.destroy_all
User.destroy_all

suits = ['hearts', 'diamonds', 'clubs', 'spades']
values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']

# Famous people with their actions and objects
pao_associations = {
  hearts: [
    { person: 'Bristleback', action: 'Spitting', object: 'Goo' },
    { person: 'Centaur', action: 'Pulling', object: 'Cart' },
    { person: 'Lifestealer', action: 'Crawling', object: 'Chains' },
    { person: 'Mars', action: 'Bashing', object: 'Shield' },
    { person: 'Primal Beast', action: 'Crying', object: 'Baby Bottle' },
    { person: 'Pudge', action: 'Rotting', object: 'Hook' },
    { person: 'Slardar', action: 'Crushing', object: 'Cloud' },
    { person: 'Sven', action: 'Superman-ing', object: 'Sword' },
    { person: 'Tiny', action: 'Tossing', object: 'Tree' },
    { person: 'Tusk', action: 'Punching', object: 'Ice shards' },
    { person: 'Dawnbreaker', action: 'Swinging', object: 'Hammer' },
    { person: 'Wraith King', action: 'Respawning', object: 'Skeletons' },
    { person: 'Earth Spirit', action: 'Rolling', object: 'Boulder' }
  ],
  diamonds: [
    { person: 'Crystal Maiden', action: 'Freezing', object: 'Snowman' },
    { person: 'Grimstroke', action: 'Painting', object: 'Paintbrush' },
    { person: 'Lion', action: 'Fingering', object: 'Green Glove' },
    { person: 'Necrophos', action: 'Shrouding', object: 'Scythe' },
    { person: 'Puck', action: 'Jaunting', object: 'Coil' },
    { person: 'Pugna', action: 'Sucking', object: 'Nether Ward' },
    { person: 'Rubick', action: 'Lifting', object: 'Staff' },
    { person: 'Shadow Shaman', action: 'Tongue-ing', object: 'Snakes' },
    { person: 'Silencer', action: 'Silencing', object: 'Glaives' },
    { person: 'Zeus', action: 'Jumping', object: 'Coin' },
    { person: 'Queen of Pain', action: 'Whipping', object: 'Whip' },
    { person: 'Oracle', action: 'Dunking', object: 'Water ball' },
    { person: 'Storm Spirit', action: 'Zipping', object: 'Static Remnant' }
  ],
  clubs: [
    { person: 'Bane', action: 'Holding', object: 'Cheese' },
    { person: 'Batrider', action: 'Riding', object: 'Lasso' },
    { person: 'Dark Seer', action: 'Vacuuming', object: 'Wall' },
    { person: 'Dark Willow', action: 'Terrorizing', object: 'Bramble' },
    { person: 'Invoker', action: 'Juggling', object: 'QWE Balls' },
    { person: 'IO', action: 'Tethering', object: 'Spirits' },
    { person: 'Magnus', action: 'Empowering', object: 'Horn' },
    { person: 'Pangolier', action: 'Swashbuckling', object: 'Sword' },
    { person: 'Phoenix', action: 'Diving', object: 'Egg' },
    { person: 'Snapfire', action: 'Kissing', object: 'Cookie' },
    { person: 'Broodmother', action: 'Spinning', object: 'Webs' },
    { person: 'Sand King', action: 'Burrowing', object: 'Sand' },
    { person: 'Void Spirit', action: 'Stepping', object: 'Pogo' }
  ],
  spades: [
    { person: 'Bounty Hunter', action: 'Tracking', object: 'Shuriken' },
    { person: 'Faceless Void', action: 'Backtracking', object: 'Mace' },
    { person: 'Hoodwink', action: 'Scurrying', object: 'Boomerang' },
    { person: 'Juggernaut', action: 'Spinning', object: 'Healing Ward' },
    { person: 'Meepo', action: 'Digging', object: 'Shovel' },
    { person: 'Naga Siren', action: 'Singing', object: 'Net' },
    { person: 'Phantom Lancer', action: 'Rushing', object: 'Lance' },
    { person: 'Riki', action: 'Sleeping', object: 'Sleeping Dart' },
    { person: 'Sniper', action: 'Shooting', object: 'Rifle' },
    { person: 'Ursa', action: 'Enraging', object: 'Claws' },
    { person: 'Templar Assassin', action: 'Melding', object: 'Trap' },
    { person: 'Monkey King', action: 'Springing', object: 'Quaterstaff' },
    { person: 'Ember Spirit', action: 'Fisting', object: 'Flames' }
  ]
}
# Create a user
user = User.create!(email: "example@example.co.uk", password: "password")
puts "created example@example.co.uk"
# Create cards
suits.each do |suit|
  values.each_with_index do |value, index|
    card = Card.create!(suit: suit, value: value)
    puts "created #{value} of #{suit.capitalize}"

    pao = pao_associations[suit.to_sym][index % pao_associations[suit.to_sym].length]
    Association.create!(user: user, card: card, person: pao[:person], action: pao[:action], object: pao[:object])
    puts "assigned PAO for #{value} of #{suit.capitalize}"
  end
end
