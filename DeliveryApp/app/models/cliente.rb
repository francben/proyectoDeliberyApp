class Cliente < ActiveRecord::Base
  belongs_to :usuario
  has_many :pedidos

  validates :nombre, :apellido, :nombre_usuario, :documento, :email, :telefono, :celular, :direccion, :pais, :ciudad, :departamento, :usuario_id, presence: true
  validates_numericality_of :usuario_id
end
