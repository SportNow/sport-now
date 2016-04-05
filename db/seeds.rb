# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

User.create!(email: 'tom.cruise@scientology.com', first_name: 'Tom', last_name: 'Cruise', password: 'missionimpossible', birth_date: '07/3/1962')

# image1 = Image.create!(url: '/images/basketball-icon-mono.png')
# image2 = Image.create!(url: '/images/soccer-icon-mono.png')
# image3 = Image.create!(url: '/images/bicycle-icon-mono.png')
# image4 = Image.create!(url: '/images/hockey-icon-mono.png')
# image5 = Image.create!(url: '/images/tennis-icon-mono.png')
# image6 = Image.create!(url: '/images/football-icon-mono.png')
# image7 = Image.create!(url: '/images/running-icon-mono.png')
# image8 = Image.create!(url: '/images/golf-icon-mono.png')
# image9 = Image.create!(url: '/images/baseball-icon-mono.png')

soccer = Sport.create(name: 'Soccer', description: 'Sport')
soccer[:image] =  'soccer-icon-mono.png'
soccer.save!
tennis = Sport.create(name: 'Tennis', description: 'Sport')
tennis[:image] =  'tennis-icon-mono.png'
tennis.save!
basketball = Sport.create(name: 'Basketball', description: 'Sport')
basketball[:image] =  'basketball-icon-mono.png'
basketball.save!
golf = Sport.create(name: 'Golf', description: 'Sport')
golf[:image] =  'golf-icon-mono.png'
golf.save!
running = Sport.create(name: 'Running', description: 'Sport')
running[:image] =  'running-icon-mono.png'
running.save!
cycling = Sport.create(name: 'Cycling', description: 'Sport')
cycling[:image] =  'bicycle-icon-mono.png'
cycling.save!
hockey = Sport.create(name: 'Ice Hockey', description: 'Sport')
hockey[:image] =  'hockey-icon-mono.png'
hockey.save!
baseball = Sport.create(name: 'Baseball', description: 'Sport')
baseball[:image] =  'baseball-icon-mono.png'
baseball.save!
football = Sport.create(name: 'Football', description: 'Sport')
football[:image] =  'football-icon-mono.png'
football.save!

event = event = Event.create!(headline: 'Soccer With Friends', sport: soccer, user: User.first, description: "Wow this is like soccer, but with friends! Wooaaaah", address: "3883 Imperial Street, Burnaby, BC V5G 4H7", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Come Run With Me', sport: running, user: User.first, description: "Oh Man I rly need a running buddy", address: "Real Address, Canada", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Basketball Is Fun', sport: basketball, user: User.first, description: "Pls basketball", address: "Alabama, Kentucky, USA", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'I am Lonely', sport: cycling, user: User.first, description: "I enjoy biking, maybe you can too!", address: "Milan, Italy", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Help Me Lose Weight', sport: hockey, user: User.first, description: "I am hearing that hockey is good canadian sport", address: "12454 Real Street, Real City", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: "Looking for Running Friends", sport: running, user: User.first, description: "I totally have other friends I promise", address: "Is this where addresses go?", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Golf is Cool!', sport: golf, user: User.first, description: "Maybe afterwards we can go for food or something I dunno", address: "72734 Mayview Circle, BC", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Old People Can Play Baseball Too', sport: baseball, user: User.first, description: "I don't understand young people!", address: "3883 Imperial Street, Burnaby, BC V5G 4H7", datetime: Time.now)
event[:image] =  'basketball-court.jpg'
event.save!
