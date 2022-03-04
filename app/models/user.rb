class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :user_skills, dependent: :destroy
  has_many :skills, through: :user_skills
  has_many :matches, dependent: :destroy
  has_many :user_likes, dependent: :destroy

  def all_languages
    languages.split(' ')
  end
end
