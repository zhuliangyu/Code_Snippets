# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  u=User.new
  u.name=Faker::Name.name
  u.email=Faker::Internet.email
  u.password="123456"
  u.save
end

language=["c","java","ruby","javascript"]


k1= Kind.new(name:"c")
k1.save
k2= Kind.new(name:"java")
k2.save
k3= Kind.new(name:"ruby")
k3.save
k4= Kind.new(name:"javascript")
k4.save



30.times do
  c=Code.new
  c.title=Faker::Name.title
  c.work=Faker::Lorem.sentence
  c.user=User.all.sample
  c.kind=Kind.all.sample
  c.save




end
