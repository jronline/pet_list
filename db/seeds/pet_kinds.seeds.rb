pet_kinds = [{ name: 'Cavalo' },
             { name: 'Cachorro' },
             { name: 'Papagaio' },
             { name: 'Lhama' },
             { name: 'Iguana' },
             { name: 'Gato' },
             { name: 'Ornitorrinco' }]
pet_kinds.each do |pet_kind|
  PetKind.where(pet_kind).first_or_create
end
