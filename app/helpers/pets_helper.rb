module PetsHelper
  def pet_kinds
    PetKind.all.collect { |pet| [pet.name, pet.id] }
  end

  def pet_owners
    Person.all.collect { |person| [person.name, person.id] }
  end
end
