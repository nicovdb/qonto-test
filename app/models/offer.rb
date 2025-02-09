class Offer < ApplicationRecord
  has_many :plans, dependent: :destroy
  accepts_nested_attributes_for :plans

  validates :name, :position, :description, presence: true
  validates :name, :position, uniqueness: true
  validates :position, numericality: true
end
