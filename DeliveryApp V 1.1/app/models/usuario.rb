class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  belongs_to :rol
  has_many :clientes

  validates :nick_usuario, :rol_id, :password, :email, :nombre_usuario, :apellido_usuario, :documento_usuario, presence: true
  validates_numericality_of :rol_id
  validates_numericality_of :estado_usuario

  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable
end
