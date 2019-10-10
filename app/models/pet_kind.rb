class PetKind < ApplicationRecord
  has_many :pets

  validates :name, presence: true, uniqueness: true
end
