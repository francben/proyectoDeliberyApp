class Repartidor < ActiveRecord::Base
  has_many :pedidos

  validates :nombre, :apellido, :telefono, :zona, :en_servicio, presence: true
end
