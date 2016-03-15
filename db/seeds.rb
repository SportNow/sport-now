# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
image1 = Image.create(url: '/images/basketball-icon-mono.png')
image2 = Image.create(url: '/images/soccer-icon-mono.png')
image3 = Image.create(url: '/images/bicycle-icon-mono.png')
image4 = Image.create(url: '/images/hockey-icon-mono.png')
image5 = Image.create(url: '/images/tennis-icon-mono.png')
image6 = Image.create(url: '/images/football-icon-mono.png')
image7 = Image.create(url: '/images/running-icon-mono.png')
image8 = Image.create(url: '/images/golf-icon-mono.png')
image9 = Image.create(url: '/images/baseball-icon-mono.png')

Sport.create(name: 'Soccer', image_id: image2.id)
Sport.create(name: 'Tennis', image_id: image5.id)
Sport.create(name: 'Basketball', image_id: image1.id)
Sport.create(name: 'Golf', image_id: image8.id)
Sport.create(name: 'Running', image_id: image7.id)
Sport.create(name: 'Cycling', image_id: image3.id)
Sport.create(name: 'Ice Hockey', image_id: image4.id)
Sport.create(name: 'Baseball', image_id: image9.id)
Sport.create(name: 'Football', image_id: image6.id)
# Sport.create(name: 'Bowling', image_id: image1.id)

image = Image.create(url: 'http://www.top10base.com/wp-content/uploads/2014/08/play-sports.png')


Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
Event.create(headline: 'Sample Event', description: 'Sample Description', image_id: image.id)
