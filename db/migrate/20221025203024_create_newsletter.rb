class CreateNewsletter < ActiveRecord::Migration[6.1]
  def change
    create_table :newsletters do |t|
      t.string :title
      t.string :description
      t.string :image
      t.integer :user_id
      t.timestamps
    end
  end
end
