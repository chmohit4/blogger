class CreateCommentsForBlogPosts < ActiveRecord::Migration
  def up
	create_table :comments do |t|
		t.string :name, :email
		t.text :comment
		t.integer :blog_post_id
		t.boolean :approved, default: false
		t.timestamps
	end
  end

  def down
	drop_table :comments
  end
end
