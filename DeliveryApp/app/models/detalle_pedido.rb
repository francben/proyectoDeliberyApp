class DetallePedido < ActiveRecord::Base

  belongs_to :pedido
  belongs_to :plato
  belongs_to :empresa

  validates :empresa_id, :plato_id, :cantidad, :costo_plato, presence: true
end
