class Plato < ActiveRecord::Base
	validates :nombre, :img, :tiempo_preparacion, :estado, presence: true
end
