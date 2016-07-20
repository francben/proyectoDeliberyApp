class DetallePedido < ActiveRecord::Base
  has_many :pedidos
  has_many :platos
  has_many :empresas

  validates :empresa_id, :plato_id, :cantidad, :costo_plato, presence: true
end
