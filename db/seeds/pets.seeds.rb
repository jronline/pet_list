pets = [{
          name: 'Pé de Pano',
          monthly_cost: 199.99,
          pet_kind_id: PetKind.where(name: 'Cavalo').first.id,
          person_id: Person.where(name: 'Johnny Cash').first.id
        },
        {
          name: 'Rex',
          monthly_cost: 99.99,
          pet_kind_id: PetKind.where(name: 'Cachorro').first.id,
          person_id: Person.where(name: 'Sid Vicious').first.id
        },
        {
          name: 'Ajudante do Papai Noel',
          monthly_cost: 99.99,
          pet_kind_id: PetKind.where(name: 'Cachorro').first.id,
          person_id: Person.where(name: 'Axl Rose').first.id
        },
        {
          name: 'Rex',
          monthly_cost: 103.99,
          pet_kind_id: PetKind.where(name: 'Papagaio').first.id,
          person_id: Person.where(name: 'Joey Ramone').first.id
        },
        {
          name: 'Flora',
          monthly_cost: 103.99,
          pet_kind_id: PetKind.where(name: 'Lhama').first.id,
          person_id: Person.where(name: 'Bruce Dickinson').first.id
        },
        {
          name: 'Dino',
          monthly_cost: 177.99,
          pet_kind_id: PetKind.where(name: 'Iguana').first.id,
          person_id: Person.where(name: 'Kurt Cobain').first.id
        },
        {
          name: 'Lassie',
          monthly_cost: 407.99,
          pet_kind_id: PetKind.where(name: 'Ornitorrinco').first.id,
          person_id: Person.where(name: 'Elvis Presley').first.id
        }]
pets.each do |pet|
  Pet.where(pet).first_or_create
end
