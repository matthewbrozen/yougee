# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cooks = Cook.create([{name:'Joe', location:'90006'}, {name:'Jim', location: '90045'}, {name:'Jack', location:'90012' }])

gardeners = Gardener.create([{name:'Matt', location:'90006'}, {name:'Paul', location: '90045'}, {name:'Jeff', location:'90012'}])

produces = Produce.create([{name:'apple'}, {name:'carrot'}, {name:'orange'} ])

produceavailables = Produceavailable.create([{produce_id:'1', gardener_id:'1', quantitystarted:20, quanititytaken:0, location:'90006'}, {produce_id:'2', gardener_id:'2', quantitystarted:20, quanititytaken:0, location:'90045'}, {produce_id:'3', gardener_id:'3', quantitystarted:20, quanititytaken:0, location:'90012'}])

produceselecteds = Produceselected.create([{quantity:5, cook_id:1, produceavailable_id:1}, {quantity:5, cook_id:2, produceavailable_id:2}, {quantity:5, cook_id:3, produceavailable_id:3} ])
