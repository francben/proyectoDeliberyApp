class Empresa < ActiveRecord::Base

	belongs_to :detalle_pedido
  validates :razonsocial, :nombrecorto, :ruc, :pais, :ciudad, :departamento, :direccion, :email, :telefono, :web, presence: true
end
