class Precio < ActiveRecord::Base
  belongs_to :categoria
  belongs_to :plato
end
