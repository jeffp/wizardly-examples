class ContributorController < ApplicationController
  
  act_wizardly_for :contributor_wizard, :redirect=>'/main/index'
	
  on_post(:name) do
    @contributor_wizard.first_name.capitalize!
    @contributor_wizard.last_name.capitalize!
  end

  # skip over donator page if contributor has selected :volunteer
  # is_a_volunteer? method defined by enumerated_attribute
  on_next(:participation) do
    redirect_to :action=>:volunteer if @contributor_wizard.is_a_volunteer?
  end

  # skip over :volunteer if going the :donation route
  on_next(:donation) do
    redirect_to :action=>:contact
  end
  
  on_finish(:contact) do
    # #set the STI type value before saving contributor model #this is disabled
    # in contributor_wizard model
    @contributor_wizard.type = 
      (@contributor_wizard.is_a_volunteer? ? 'Volunteer' : 'Donator')
  end
end
