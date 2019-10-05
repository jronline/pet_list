class Person < ApplicationRecord
  has_many :pets

  def monthly_spend
    pets.sum(&:monthly_cost).to_f
  end
end
