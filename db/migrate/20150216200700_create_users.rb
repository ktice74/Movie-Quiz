class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password_hash
      t.integer :year
      t.integer :1997
      t.integer :1998

      t.timestamps
    end

  end
end

users= User.all

user =User.first

user.