#Cards seed
card4 = {question: "What is the color of the sky?", :answer => "blue", deck_id: 1}
card5 = {question: "What is 1 + 1?", :answer => "2", deck_id: 1}
card6 = {question: "What is the capital of Romania?", :answer => "Bucharest", deck_id: 1}
cards2 = [card4, card5, card6]
cards2.map! { |card| Card.create(card) }
Deck.create(:title => 'Random', :cards => cards2)

card1 = {question: "In what month is the longest day in the northern hemisphere?", :answer => "June", deck_id: 2}
card2 = {question: "What do pandas eat?", :answer => "bamboo", deck_id: 2}
card3 = {question: "Cynophobia is the fear of what kind of animal?", :answer => "dogs", deck_id: 2}
cards = [card1, card2, card3]
cards.map! { |card| Card.create(card) }
Deck.create(:title => 'Trivia', :cards => cards)

u = User.create(username: "bob", email: "bob@bob.com", password: "password", password_confirmation: "password")

v = User.create(username: "anne", email: "anne@anne.com", password: "password", password_confirmation: "password")

r = Round.create(user_id: 1, deck_id: 1)

r2 = Round.create(user_id: 2, deck_id: 2)
