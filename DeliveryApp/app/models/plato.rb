class Plato < ActiveRecord::Base
	has_many :detalle_pedidos
	has_many :precios

  validates :nombre, :img, :tiempo_preparacion, :estado, presence: true
end
