class Categoria < ActiveRecord::Base
  has_many :precios
end