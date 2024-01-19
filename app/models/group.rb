class Group < ApplicationRecord
  belongs_to :user
  has_many :entities

  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true
end
