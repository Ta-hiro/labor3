class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages

  validates :name, presence: true
  validates :email, uniqueness: true
  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/ }
end
