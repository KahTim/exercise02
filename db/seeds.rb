require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
owner = {}
ActiveRecord::Base.transaction do
  5.times do 
    owner['name'] = Faker::Name.first_name
    Owner.create(owner)
  end
end

articles = {}
owner_ids = []
Owner.all.each { |u| owner_ids << u.id }
ActiveRecord::Base.transaction do
  25.times do 
    articles['name'] = Faker::ProgrammingLanguage.name
    articles['content'] = Faker::Lorem.sentence
    articles['owner_id'] = owner_ids.sample
    Article.create(articles)
  end
end 