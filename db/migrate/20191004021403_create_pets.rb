class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.decimal :monthly_cost, precision: 8, scale: 2, default: 0.00, null: false
      t.references :pet_kind, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
