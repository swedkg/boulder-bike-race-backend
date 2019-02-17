class CreateActiveStorageTablesSlogan < ActiveRecord::Migration[5.2]
  def change
    create_table :active_storage_tables_slogans do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :slogan
    end
  end
end
