# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pet, type: :model do
  describe 'associations' do
    it { should belong_to(:pet_kind) }
    it { should belong_to(:person) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:monthly_cost) }
  end

  context 'when all params are correct' do
    let(:person_params) {
      { name: 'Johnny Cash', document: '555555555',
        date_of_birth: '26/02/1932'.to_date }
    }
    let(:horse) { PetKind.where(name: 'Cavalo').first_or_create }
    let(:person) { Person.where(person_params).first_or_create }
    let(:params) {
      { name: 'buma', pet_kind_id: horse.id,
        monthly_cost: 10, person_id: person.id }
    }
    it 'successfuly create a Pet' do
      expect { Pet.create(params) }.to change { Pet.count }.by 1
    end
  end

  context "when a param isn't correct" do
    let(:invalid_params) {
      { name: 'buma', monthly_cost: 10, pet_kind_id: nil, person_id: nil }
    }
    it "can't create a Pet" do
      expect { Pet.create(invalid_params) }.to_not change(Pet, :count)
    end
  end
end
