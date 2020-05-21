class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient }

  belongs_to :cocktail
  belongs_to :ingredient

 # belongs_to :ingredient, optional: true > pas obligé d'avoir un ingredient

end
