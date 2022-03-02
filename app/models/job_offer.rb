class JobOffer < ApplicationRecord
  has_many :job_skills
  has_many :skills, through: :job_skills
  belongs_to :company
  has_one_attached :photo

  validates :description, :question1, :question2, :question3, :job_title, :city, :contracttype, presence: true

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :job_title, :city, :contracttype ],
    using: {
      tsearch: { prefix: true }
    }
end
