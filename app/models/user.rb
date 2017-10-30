class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :answers, foreign_key: :author_id
  has_many :questions, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id
  has_many :votes, foreign_key: :judge_id

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

end
