class Pet < ApplicationRecord
  belongs_to :pet_kind
  belongs_to :person

  validates :name, :monthly_cost, :pet_kind_id, :person_id, presence: true
end
