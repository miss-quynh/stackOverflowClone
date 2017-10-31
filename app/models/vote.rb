class Vote < ApplicationRecord
  validates :up_vote, :down_vote, :judge_id, :votable_id, :votable_type, :presence => true

  belongs_to :judge, class_name: "User"
  belongs_to :votable, :polymorphic => true

end
