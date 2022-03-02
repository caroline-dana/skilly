class JobOffer < ApplicationRecord
  belongs_to :company
  has_one_attached :photo

  validates :description, :question1, :question2, :question3, :job_title, :city, :contracttype, presence: true

  include PgSearch::Model
  pg_search_scope :search,
    against: [ :job_title, :city, :contracttype ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
