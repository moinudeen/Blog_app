class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.text :content
      t.references :user_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :blog_posts, :user_ids
  end
end
