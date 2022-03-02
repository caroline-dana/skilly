class RemoveSkillsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :soft_skills, :string
    remove_column :users, :hard_skills, :string
  end
end
