# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)
image = Image.create!(url: 'http://www.top10base.com/wp-content/uploads/2014/08/play-sports.png')

User.create!(email: 'tom.cruise@scientology.com', first_name: 'Tom', last_name: 'Cruise', password: 'missionimpossible', birth_date: '07/3/1962')

image1 = Image.create!(url: '/images/basketball-icon-mono.png')
image2 = Image.create!(url: '/images/soccer-icon-mono.png')
image3 = Image.create!(url: '/images/bicycle-icon-mono.png')
image4 = Image.create!(url: '/images/hockey-icon-mono.png')
image5 = Image.create!(url: '/images/tennis-icon-mono.png')
image6 = Image.create!(url: '/images/football-icon-mono.png')
image7 = Image.create!(url: '/images/running-icon-mono.png')
image8 = Image.create!(url: '/images/golf-icon-mono.png')
image9 = Image.create!(url: '/images/baseball-icon-mono.png')

Sport.create!(name: 'Soccer', description: 'Sport', image_id: image2.id)
Sport.create!(name: 'Tennis', description: 'Sport', image_id: image5.id)
Sport.create!(name: 'Basketball', description: 'Sport', image_id: image1.id)
Sport.create!(name: 'Golf', description: 'Sport', image_id: image8.id)
Sport.create!(name: 'Running', description: 'Sport', image_id: image7.id)
Sport.create!(name: 'Cycling', description: 'Sport', image_id: image3.id)
Sport.create!(name: 'Ice Hockey', description: 'Sport', image_id: image4.id)
Sport.create!(name: 'Baseball', description: 'Sport', image_id: image9.id)
Sport.create!(name: 'Football', description: 'Sport', image_id: image6.id)

Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
Event.create!(headline: 'Sample Event', description: 'Sample Description', image_id: image.id, sport: Sport.first, user: User.first)
