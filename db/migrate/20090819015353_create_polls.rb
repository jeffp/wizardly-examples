class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.string :name
      t.integer :age
      t.enum :gender
      t.enum :q1
      t.enum :q2
      t.enum :q3
      t.enum :q4
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :polls
  end
end
