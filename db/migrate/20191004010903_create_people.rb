class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :document, null: false
      t.date :date_of_birth, null: false

      t.timestamps
    end
  end
end
