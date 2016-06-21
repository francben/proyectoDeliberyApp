class DetallePedido < ActiveRecord::Base
  has_many :pedidos
  has_many :platos

  validates :pedido_id, :empresa_id, :plato_id, :costo_plato, presence: true
end
