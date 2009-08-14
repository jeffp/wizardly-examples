class ContributorWizard < Contributor
  # disable STI
  self.inheritance_column = :_disabled
		
  validation_group :name, :fields=>[:first_name, :last_name]
  validation_group :participation, :fields=>[:participation, :started]
  validation_group :donation, :fields=>[:monthly_pledge, :total_amount]
  validation_group :volunteer, :fields=>[:montly_pledge, :total_hours]
  validation_group :contact, :fields=>[:phone, :email]

end