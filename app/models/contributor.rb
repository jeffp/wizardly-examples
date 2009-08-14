class Contributor < ActiveRecord::Base

  validates_presence_of :first_name, :last_name, :email, :phone
  validates_presence_of :participation
  validates_format_of :phone, :with=> /^(?:\([2-9]\d{2}\)\ ?|[2-9]\d{2}(?:\-?|\ ?))[2-9]\d{2}[- ]?\d{4}$/, 
    :message=>"requires 10-digit number"
  validates_format_of :email, :with=> /^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$/, 
    :message=>"requires email address"
	
  enum_attr :participation, %w(volunteer donator)
	

end
