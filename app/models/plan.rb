class Plan < ApplicationRecord
  belongs_to :offer
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options

  validates :name, :position, :description, :price_cents, presence: true
  validates :price_cents, numericality: { greater_than: 0 }
  validates :position, numericality: true

  def price
    price_cents.to_f / 100
  end
end
