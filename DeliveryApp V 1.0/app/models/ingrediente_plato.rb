class IngredientePlato < ActiveRecord::Base

  has_many :ingredientes
  has_many :platos

	validates :ingrediente_id, :plato_id, :cantidad, presence: true
end
