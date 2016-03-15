# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sport.create(name: 'Soccer')
Sport.create(name: 'Tennis')
Sport.create(name: 'Basketball')
Sport.create(name: 'Golf')
Sport.create(name: 'Running')
Sport.create(name: 'Cycling')
Sport.create(name: 'Ice Hockey')
Sport.create(name: 'Floor Hockey')
Sport.create(name: 'Volleyball')
Sport.create(name: 'Bowling')

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
