require 'rails_helper'

RSpec.describe PetKind, type: :model do
  describe 'associations' do
    it { should have_many(:pets) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  context 'when all params are correct' do
    let(:params) {
      { name: 'Johnny Cash' }
    }
    it 'successfuly create a PetKind' do
      expect { PetKind.create(params) }.to change { PetKind.count }.by 1
    end
  end

  context "when a param isn't correct" do
    let(:invalid_params) {
      { name: '' }
    }
    it "can't create a PetKind" do
      expect { PetKind.create(invalid_params) }.to_not change(PetKind, :count)
    end
  end
end
