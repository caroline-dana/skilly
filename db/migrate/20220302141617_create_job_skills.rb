class CreateJobSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :job_skills do |t|
      t.references :skill, null: false, foreign_key: true
      t.references :job_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
