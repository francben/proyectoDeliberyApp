class Pedido < ActiveRecord::Base

  belongs_to :repartidor
  belongs_to :usuario
  belongs_to :empresa
  belongs_to :cliente

	validates :empresa_id, :orden_numero, :cliente_id, :fecha_pedido, :direccion, :monto_total, :tiempo_estimado_envio, :recepcionado, :enviado, :entregado, :usuario_id, :repartidor_id, :estado, presence: true
	validates_numericality_of :empresa_id
end
