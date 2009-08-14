class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :mobile, :username, :password
  validates_presence_of :degree, :status
  validates_confirmation_of :password
  validates_format_of :mobile, :with=> /^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$/, 
    :message=>"requires 10-digit number"
  validates_format_of :email, :with=> /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$/, 
    :message=>"requires email address"
  validates_uniqueness_of :email, :username
	
  enum_attr :degree, %w(^none high_school college graduate) do
    label :high_school=>'High School'
  end
  enum_attr :status, %w(single married divorced widowed)
  #see jeffp/enumerated_attribute at github
	
end

