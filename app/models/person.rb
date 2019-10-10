class Person < ApplicationRecord
  has_many :pets

  validates :name, :document, :date_of_birth, presence: true

  def monthly_spend
    pets.sum(&:monthly_cost).to_f
  end
end
