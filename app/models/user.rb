class User < ApplicationRecord
  has_many :houses
  has_many :blogs
  has_many :comments
  validates :user_name, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
