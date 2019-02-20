class AddIndexToApiSlogans < ActiveRecord::Migration[5.2]
  def change
    # add_column :api_slogans, :email, :string
    add_index :api_slogans, :email, unique: true
  end
end
