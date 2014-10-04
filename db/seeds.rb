# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Category.destroy_all
Task.destroy_all
Partner.destroy_all

u1 = User.create(:name => 'Rebecca', :email => 'rebeccastyu@gmail.com', :password => 'papparich')
#u2 = User.create(:name => 'Eryn-Jane')
#u3 = User.create(:name => 'Lawrence')

c1 = Category.create(:heading => 'Studying')
c2 = Category.create(:heading => 'Prep for HSC')
c3 = Category.create(:heading => 'Finish Project')

t1 = Task.create(:paideuo => 'Finish Report and stop procastinating')
t2 = Task.create(:paideuo => 'Study French Speaking')
t3 = Task.create(:paideuo => 'Finish Styling and data base for paideuo')

p1 = Partner.create(:name => 'Lawrence')
p2 = Partner.create(:name => 'Jacky')
p3 = Partner.create(:name => 'James')

u1.categories << c1

c1.tasks << t1

p1.tasks << t1