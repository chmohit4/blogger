class CreateBlogPosts < ActiveRecord::Migration
  def up
	create_table :blog_posts do |t|
		t.string :title, :keywords, :author
		t.text :description
		t.boolean :published
		t.timestamp :published_at
		t.integer :blog_id #BlogPost belongs_to Blog	
		t.timestamps	
	end
  end

  def down
	drop_table :blog_posts
  end
end
