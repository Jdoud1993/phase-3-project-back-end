class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.string :image
      t.timestamps
    end
  end
end
