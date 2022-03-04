class Skill < ApplicationRecord
  has_many :job_skills
  has_many :user_skills

  scope :valeurs, -> { where(category: 'values') }
  scope :soft_skills, -> { where(category: 'soft_skill') }
  scope :hard_skills, -> { where(category: 'hard_skill') }
end
