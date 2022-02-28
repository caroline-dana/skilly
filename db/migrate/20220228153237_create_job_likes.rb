class CreateJobLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :job_likes do |t|
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :job_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
