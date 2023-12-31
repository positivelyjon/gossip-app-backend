class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.integer :likes
      t.timestamps
    end
  end
end
