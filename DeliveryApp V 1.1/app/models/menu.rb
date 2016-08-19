class Menu < ActiveRecord::Base
	
  belongs_to :categoria
	validates :empresa_id, :nombre, :estado, presence: true
	validates_numericality_of :empresa_id
end
