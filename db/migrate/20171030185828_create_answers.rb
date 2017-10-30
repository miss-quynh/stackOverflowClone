class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.boolean :top_rated, default: false
      t.references :user, null: false
      t.references :question, null: false

      t.timestamps
    end
  end
end
