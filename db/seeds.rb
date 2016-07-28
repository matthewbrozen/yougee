# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Produceselected.destroy_all
Produceavailable.destroy_all
Produce.destroy_all
User.destroy_all
Gardener.destroy_all
Cook.destroy_all

User.create([
  {email:"first@first.com", password:"password", profile: Cook.new(name:'Joe', location:'90006')},
  {email:"second@second.com", password:"password", profile: Cook.new(name:'Jim', location: '90045')},
  {email:"third@third.com", password:"password", profile: Cook.new(name:'Jack', location:'90012')},
  {email:"fourth@fourth.com", password:"password", profile: Gardener.new(name:'Matt', location:'90006')},
  {email:"fifth@fifth.com", password:"password", profile: Gardener.new(name:'Paul', location: '90045')},
  {email:"sixth@third.com", password:"password", profile: Gardener.new(name:'Jeff', location:'90012')},
  ])
Produce.create([
  {name:'apple'},
  {name:'carrot'},
  {name:'orange'},
  {name:'watermelon'},
  {name:'lemon'},
  {name:'lime'},
  {name:'cucumber'},
  {name:'brocolli'},
  {name:'potato'},
  {name:'banana'},
])
Produceavailable.create([
  {produce_id: Produce.all.sample.id, gardener_id:Gardener.all.sample.id, quantitystarted:20, quanititytaken:0, location:'90006'},
  {produce_id: Produce.all.sample.id, gardener_id:Gardener.all.sample.id, quantitystarted:20, quanititytaken:0, location:'90045'},
  {produce_id: Produce.all.sample.id, gardener_id:Gardener.all.sample.id, quantitystarted:20, quanititytaken:0, location:'90012'}
])
