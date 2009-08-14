class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
			t.enum :degree
			t.enum :status
      t.string :username
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
