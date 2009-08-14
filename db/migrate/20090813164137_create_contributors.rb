class CreateContributors < ActiveRecord::Migration
  def self.up
    create_table :contributors do |t|
      t.string :first_name
      t.string :last_name
      t.date :started
      t.string :type
      t.enum :participation
      t.decimal :total_amount, :precision=>8, :scale=>2
      t.decimal :monthly_pledge, :precision=>8, :scale=>2
      t.decimal :total_hours, :precision=>8, :scale=>2
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :contributors
  end
end
