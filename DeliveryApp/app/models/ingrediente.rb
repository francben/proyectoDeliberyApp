class Ingrediente < ActiveRecord::Base
  has_many :ingrediente_platos
	
	validates :nombre, :estado, presence: true
end