class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence:  { message: "Name is missing "}

  has_attachments :photos, maximum: 2
end
