class Option < ApplicationRecord
  belongs_to :plan

  validates :description, presence: true
end
