class PlatoCategoria < ActiveRecord::Base

  has_many :platoss
  has_many :categorias

	validates :plato_id, :categoria_id, :menu_id, :empresa_id, presence: true
	validates_numericality_of :plato_id,:categoria_id,:menu_id,:empresa_id
end
