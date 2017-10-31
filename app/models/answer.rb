class Answer < ApplicationRecord
  validates :body, :top_rated, :author_id, :question_id, :presence => true
  belongs_to :question
  belongs_to :user, foreign_key: :author_id
  has_many :comments, :as => :commentable
  has_many :votes, :as => :votable

end
