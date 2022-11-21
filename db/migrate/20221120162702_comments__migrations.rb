class CommentsMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :blog_id
    
    end
  end
end
