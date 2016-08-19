class Pedido < ActiveRecord::Base

  belongs_to :repartidor
  belongs_to :usuario
  belongs_to :empresa
  belongs_to :cliente

  has_many :detalle_pedidos
  has_many :platos, through: :detalle_pedidos

  validates :empresa_id, :orden_numero, :cliente_id, :fecha_pedido, :direccion, :monto_total, :tiempo_estimado_envio, :recepcionado, :usuario_id, :repartidor_id, :estado, presence: true

  accepts_nested_attributes_for :detalle_pedidos, allow_destroy: true

end
