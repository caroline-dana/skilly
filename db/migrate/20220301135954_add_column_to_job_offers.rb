class AddColumnToJobOffers < ActiveRecord::Migration[6.1]
  def change
    remove_column :job_offers, :skills_wanted, :string
    add_column :job_offers, :soft_skills, :string
    add_column :job_offers, :hard_skills, :string
    add_column :job_offers, :languages, :string
    add_column :job_offers, :years_of_experience, :integer
    add_column :job_offers, :values, :string
  end
end
