class RemoveValuesFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :values, :string
  end
end
