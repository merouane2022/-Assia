class House < ApplicationRecord
  belongs_to :user
  validates :adresse, presence: true
  validates :property_type, presence: true
  validates :status, presence: true
  validates :surface, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates_length_of :content, minimum: 10
  validates :price, presence: true
end
