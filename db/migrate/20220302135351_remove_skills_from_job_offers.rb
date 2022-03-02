class RemoveSkillsFromJobOffers < ActiveRecord::Migration[6.1]
  def change
    remove_column :job_offers, :soft_skills, :string
    remove_column :job_offers, :hard_skills, :string
  end
end
