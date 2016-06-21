class Menu < ActiveRecord::Base
	
	validates :empresa_id, :nombre, :estado, presence: true
	validates_numericality_of :empresa_id
end
