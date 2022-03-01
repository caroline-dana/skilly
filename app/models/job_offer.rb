class JobOffer < ApplicationRecord
  belongs_to :company

  validates :description, :question1, :question2, :question3, :job_title, :city, :contracttype, presence: true
end
