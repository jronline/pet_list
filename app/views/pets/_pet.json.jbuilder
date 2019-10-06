json.extract! pet, :id, :name, :monthly_cost, :pet_kind_id, :person_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
