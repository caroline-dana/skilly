class JobLike < ApplicationRecord
  belongs_to :user
  belongs_to :joboffer
end
