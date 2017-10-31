class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :answers, foreign_key: :author_id
  has_many :questions, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :votes, foreign_key: :judge_id

  has_secure_password

end
