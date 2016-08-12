class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence:  { message: "Description is missing "}
  validates :cocktail, presence:  { message: "Cocktail is missing "}
  validates :ingredient, presence:  { message: "Ingredient is missing "}
  validates_uniqueness_of :cocktail, :scope => :ingredient
end

