class DropActiveStorageTablesSlogans < ActiveRecord::Migration[5.2]
  def change
    drop_table :active_storage_tables_slogans
  end
end
