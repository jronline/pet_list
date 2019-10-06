# README

Projeto criado para teste de conhecimento técnico.


rails g model Person name:string document:string date_of_birth:date
rails g model PetKind name:string
rails g model Pet name:string monthly_cost:decimal pet_kind:references person:references
rails g scaffold Pet name:string monthly_cost:decimal pet_kind:references person:references


Questões
As questões devem ser respondidas com queries do ActiveRecord. Inclua os trechos de código que respondem as perguntas abaixo:

Qual é o custo médio dos animais do tipo cachorro?
  PetKind.find_by(name: 'Cachorro').pets.average(:monthly_cost).to_f

Quantos cachorros existem no sistema?
  PetKind.find_by(name: 'Cachorro').pets.count

Qual o nome dos donos dos cachorros (Array de nomes)
  PetKind.find_by(name: 'Cachorro').pets.map { |pet| pet.person.name }

Retorne as pessoas ordenando pelo custo que elas tem com os animais (Maior para menor)
  Person.includes(:pets).all.sort_by(&:monthly_spend).reverse

Levando em consideração o custo mensal, qual será o custo de 3 meses de cada pessoa?
  Person.includes(:pets).all.map { |person| [person.name, person.monthly_spend.to_f * 3] }
