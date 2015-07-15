# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
foods = Food.create([
    {name: "Pizza", serving:"1 slice",  calories:250},
    {name: "Apple", serving:"1 medium size", calories:223},
    {name: "Bacon", serving:"2 slices", calories:80},
    {name: "Tofu, grilled", serving:".5 cup", calories:94},
    {name: "Pita chips", serving:"10 chips", calories:130},
    {name: "Hummus", serving:"1 oz", calories:70},
    {name: "Broccoli", serving:"6 oz", calories:60},
    {name: "Icecream, Cookie Dough", serving:".5 cup", calories:130}
])
