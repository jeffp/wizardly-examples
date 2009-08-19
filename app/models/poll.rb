class Poll < ActiveRecord::Base

# this example uses enumerated_attribute - see http://github.com/jeffp/enumerated_attribute
=begin
  t.string :name
  t.integer :age
  t.enum :gender
  t.enum :q1
  t.enum :q2
  t.enum :q3
  t.enum :q4
  t.string :phone
  t.string :email
=end
	
  validates_presence_of :name, :age, :gender
  validates_numericality_of :age
  validates_presence_of :q1, :q2, :q3, :q4

  enum_attr :gender, %w(male female)
  enum_attr :q1, %w(not_much somewhat interested very_interested)
  enum_attr :q2, %w(not_much somewhat interested very_interested)
  enum_attr :q3, %w(not_much somewhat interested very_interested)
  enum_attr :q4, %w(not_much somewhat interested very_interested)
	
  validation_group :info, :fields=>[:name, :age, :gender]
  validation_group :question_1, :fields=>[:q1]
  validation_group :question_2, :fields=>[:q2]
  validation_group :question_3, :fields=>[:q3]
  validation_group :question_4, :fields=>[:q4]
  validation_group :contact, :fields=>[:phone, :email]

end
