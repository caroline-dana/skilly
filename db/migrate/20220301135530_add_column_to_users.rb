class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :skills, :string
    add_column :users, :soft_skills, :string
    add_column :users, :hard_skills, :string
    add_column :users, :languages, :string
    add_column :users, :years_of_experience, :integer
    add_column :users, :values, :string
  end
end
