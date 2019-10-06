class Pet < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  belongs_to :pet_kind
  belongs_to :person

  validates :name, :monthly_cost, presence: true
  validates :monthly_cost, numericality: { greater_than_or_equal_to: 0,
                                           less_than_or_equal_to: 1000 }

  validate :person_age_validation
  validate :cat_owner_name_validation
  validate :owner_spending_limit_validation, on: :create

  # CUSTOM VALIDATIONS

  # Pessoas devem ter mais de 18 anos para ter andorinhas
  def person_age_validation
    return unless person && pet_kind
    return unless pet_kind.name == 'Andorinha'
    return unless (person.date_of_birth + 18.years) < Date.today

    errors[:person] << I18n.t('activerecord.errors.pet.person_age',
                              name: person.name,
                              pet_kind: pet_kind.name)
  end

  # Pessoas que tenham nome começando com a letra "A" não podem ter animais do tipo Gato
  def cat_owner_name_validation
    return unless person && pet_kind
    return unless pet_kind.name == 'Gato'
    return unless person.name.start_with?('A')

    errors[:person] << I18n.t('activerecord.errors.pet.cat_owner')
  end

  # Pessoas que ja tiverem custos com animais acima de 1000 nao podem ter mais animais
  def owner_spending_limit_validation
    return unless person
    return unless person.monthly_spend > 1000

    errors[:person] << I18n.t('activerecord.errors.pet.spending_error',
                              name: person.name,
                              currency: number_to_currency(1000,
                                                           format: '%u%n'))
  end
end
