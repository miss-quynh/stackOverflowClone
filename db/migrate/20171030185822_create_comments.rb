class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.references :user, null: false
      t.references :commentable, polymorphic: true

      t.timestamps
    end
  end
end
