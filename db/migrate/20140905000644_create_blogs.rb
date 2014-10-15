class CreateBlogs < ActiveRecord::Migration
  def up
	create_table :blogs do |t|
		t.string :title
		t.text :summary
		t.string :keywords
		t.boolean :published
		t.timestamps
	end
  end

  def down
	drop_table :blogs
  end
end
