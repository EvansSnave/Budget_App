# app/models/user.rb
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Validaciones de Devise ya incluidas
  validates :name, presence: true, uniqueness: true

  has_many :groups
  has_many :entities, foreign_key: 'author_id'
end
