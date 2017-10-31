class Comment < ApplicationRecord
  validates :body, :author_id, :commentable_id, :commentable_type, :presence => true

  belongs_to :user, foreign_key: :author_id
  belongs_to :commentable, :polymorphic => true
  has_many :votes, :as => :votable

end
