class AddSkillsWantedToJobOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :job_offers, :skills_wanted, :string
  end
end
