class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :breed
      t.string :sex
      t.integer :age
      t.integer :shelter_id
    end
  end
end
