class BlogsMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :image
      t.integer :user_id
      t.integer :likes
      t.datetime :created_at
    end  
  end
end
