class Empresa < ActiveRecord::Base

  validates :razonsocial, :nombrecorto, :ruc, :pais, :ciudad, :departamento, :direccion, :email, :telefono, :web, presence: true
end
