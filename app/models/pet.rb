class Pet < ApplicationRecord
  belongs_to :pet_kind
  belongs_to :person
end
