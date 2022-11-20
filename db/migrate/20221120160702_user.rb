class User < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username, unique: true
      
    end
  end
end
