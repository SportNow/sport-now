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

sport = Sport.create(name: 'Soccer', description: 'Sport')
sport[:image] =  'soccer-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Tennis', description: 'Sport')
sport[:image] =  'tennis-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Basketball', description: 'Sport')
sport[:image] =  'basketball-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Golf', description: 'Sport')
sport[:image] =  'golf-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Running', description: 'Sport')
sport[:image] =  'running-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Cycling', description: 'Sport')
sport[:image] =  'bicycle-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Ice Hockey', description: 'Sport')
sport[:image] =  'hockey-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Baseball', description: 'Sport')
sport[:image] =  'baseball-icon-mono.png'
sport.save!
sport = Sport.create(name: 'Football', description: 'Sport')
sport[:image] =  'football-icon-mono.png'
sport.save!

event = event = Event.create!(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
event = Event.create(headline: 'Sample Event', description: 'Sample Description', sport: Sport.sample, user: User.first)
event[:image] =  'basketball-court.jpg'
event.save!
