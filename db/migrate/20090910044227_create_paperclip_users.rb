class CreatePaperclipUsers < ActiveRecord::Migration
  def self.up
    create_table :paperclip_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :mobile
			t.enum :degree
			t.enum :status
      t.string :username
      t.string :password


      t.string :avatar_file_name
      t.string :avatar_content_type
      t.integer :avatar_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :paperclip_users
  end
end
