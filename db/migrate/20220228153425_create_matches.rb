class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.boolean :status
      t.text :answer1
      t.text :answer2
      t.text :answer3
      t.date :callbooking
      t.references :user, null: false, foreign_key: true
      t.references :job_offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
