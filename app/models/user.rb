class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
         
  validates :nombre, presence: true
  validates :apellido, presence: true       
  validates :telefono, numericality: { only_integer: true, less_than_or_equal_to: 999999999 }
  
  has_many :propiedads, dependent: :destroy
end
