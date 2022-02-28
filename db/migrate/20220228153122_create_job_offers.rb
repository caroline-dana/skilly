class CreateJobOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :job_offers do |t|
      t.text :description
      t.text :question1
      t.text :question2
      t.text :question3
      t.string :job_title
      t.string :city
      t.string :contracttype
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
