class CommentsMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :author
    
    end
  end
end
