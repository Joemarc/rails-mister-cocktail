# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all


coca = Ingredient.create(name: "Coca")
whisky = Ingredient.create(name: "Whisky")
vodka = Ingredient.create(name: "Vodka")
menthe = Ingredient.create(name: "Menthe")
basilic = Ingredient.create(name: "Basilic")
glace = Ingredient.create(name: "Glace pillée")
citron_vert = Ingredient.create(name: "Citron_vert")
rhum = Ingredient.create(name: "Rhum")

whisky_sour = Cocktail.create(name: "Whisky Sour")
cuba_libre = Cocktail.create(name: "Cuba Libre")
bloody_mary = Cocktail.create(name: "Bloody Mary")

dose1 = Dose.new(description: "6cl")
dose1.ingredient = coca
dose1.cocktail = whisky_sour
dose1.save

dose2 = Dose.new(description: "4cl")
dose2.ingredient = whisky
dose2.cocktail = cuba_libre
dose2.save

dose3 = Dose.new(description: "3cl")
dose3.ingredient = vodka
dose3.cocktail = bloody_mary
dose3.save
