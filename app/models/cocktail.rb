class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses

   validates :name, uniqueness: true, presence:  { message: "Name is missing "}
end
