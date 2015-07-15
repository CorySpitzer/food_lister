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
    {name: "Icecream, Cookie Dough", serving:".5 cup", calories:130},
    {name: "Bread", serving:"1 slice",  calories:120},
    {name: "Pasta", serving:"1 cup",  calories:400},
    {name: "Doritos", serving:"11 chips",  calories:140},
    {name: "Egg", serving:"1",  calories:78},
    {name: "Coffee", serving:"1 cup",  calories:3},
    {name: "Almond Milk", serving:"1 cup",  calories:30},
    {name: "Granola", serving:"1 cup",  calories:226},
    {name: "Sausage, Vegetarian", serving:"1 link",  calories:240},
    {name: "Sausage, Pork", serving:"1 link",  calories:286},
    {name: "Peanut Butter", serving:"1 tbsp",  calories:95},
    {name: "Jelly, Raspberry", serving:"1 tbsp",  calories:50},
    {name: "Spinach", serving:"1 cup",  calories:7},
    {name: "Olive Oil", serving:"1 tsp",  calories:120}
])
