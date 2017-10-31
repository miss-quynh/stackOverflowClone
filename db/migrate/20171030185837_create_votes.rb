class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :up_vote, null: false
      t.integer :down_vote, null: false
      t.integer :judge_id, null: false
      t.references :votable, polymorphic: true

      t.timestamps
    end
  end
end
