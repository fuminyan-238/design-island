class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title,null: false
      t.string :designid,null: false
      t.text :text,null: false
      t.text :image,null: false
      # t.references  :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
