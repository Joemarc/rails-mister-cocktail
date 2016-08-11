class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, uniqueness: true, presence:  { message: "Description is missing "}
  validates_uniqueness_of :cocktail, :scope => :ingredient
end
