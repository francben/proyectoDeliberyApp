class Rol < ActiveRecord::Base
	has_many :usuarios

	validates :nombre_rol, :descripcion_rol, :estado_rol, presence: true
	validates_numericality_of :estado_rol
end
