class Categoria < ActiveRecord::Base
	validates :menu_id, :empresa_id, :nombre, :estado, presence: true
	validates_numericality_of :menu_id
end
