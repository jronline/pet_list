require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'associations' do
    it { should have_many(:pets) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:document) }
    it { should validate_presence_of(:date_of_birth) }
  end

  context 'when all params are correct' do
    let(:params) {
      { name: 'Johnny Cash',
        document: '55555555',
        date_of_birth: Date.today - 30.years }
    }
    it 'successfuly create a Person' do
      expect { Person.create(params) }.to change { Person.count }.by 1
    end
  end

  context "when a param isn't correct" do
    let(:invalid_params) {
      { name: '' }
    }
    it "can't create a Person" do
      expect { Person.create(invalid_params) }.to_not change(Person, :count)
    end
  end
end
