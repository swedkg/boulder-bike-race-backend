class CreateRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.float :lat
      t.float :lng
      t.text :quote
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
