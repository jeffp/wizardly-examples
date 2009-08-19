class PollWizardController < ApplicationController
  act_wizardly_for :poll
	
  on_post(:info) do
    @poll.name = @poll.name.titleize
  end
	
  on_completed do
    redirect_to poll_path(@poll.id)
  end
end