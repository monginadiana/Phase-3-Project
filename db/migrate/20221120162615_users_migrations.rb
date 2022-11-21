class UsersMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      t.string :email
      t.string :password_digest
      
      
    end
  end
end
