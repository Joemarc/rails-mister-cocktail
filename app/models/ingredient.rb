class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, presence:  { message: "Name is missing "}
end
