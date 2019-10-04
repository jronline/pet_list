# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

people = [{
            name: 'Johnny Cash',
            document: '555555555',
            date_of_birth: '26/02/1932'.to_date
          },
          {
            name: 'Sid Vicious',
            document: '555555555',
            date_of_birth: '10/05/1957'.to_date
          },
          {
            name: 'Axl Rose',
            document: '555555555',
            date_of_birth: '06/02/1962'.to_date
          },
          {
            name: 'Joey Ramone',
            document: '555555555',
            date_of_birth: '19/05/1951'.to_date
          },
          {
            name: 'Bruce Dickinson',
            document: '555555555',
            date_of_birth: '07/08/1958'.to_date
          },
          {
            name: 'Kurt Cobain',
            document: '555555555',
            date_of_birth: '20/02/1967'.to_date
          },
          {
            name: 'Elvis Presley',
            document: '555555555',
            date_of_birth: '17/08/2008'.to_date
          }]
people.each do |person|
  Person.where(person).first_or_create
end

pet_kinds = [{ name: 'Cavalo' },
             { name: 'Cachorro' },
             { name: 'Papagaio' },
             { name: 'Lhama' },
             { name: 'Iguana' },
             { name: 'Ornitorrinco' }]
pet_kinds.each do |pet_kind|
  PetKind.where(pet_kind).first_or_create
end

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
