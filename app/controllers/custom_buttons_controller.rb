class CustomButtonsController < ApplicationController
  act_wizardly_for :user_signup_in3_pages, :form_data=>:sandbox, :redirect=>'/main/index', :skip=>true do
    change_button(:back).name_to('Previous Page')
    change_button(:cancel).name_to('Quit')
    change_button(:finish).name_to('Submit and Return')
    create_button('Help')
    set_page(:info).buttons_to :next, :skip, :quit, :help
    set_page(:contact).buttons_to :next, :previous_page, :skip, :quit, :help
    set_page(:account).buttons_to :submit_and_return, :previous_page, :skip, :quit, :help
  end
  
  on_post(:info) do
    @user_signup_in3_pages.first_name.capitalize! 
    @user_signup_in3_pages.last_name.capitalize!
  end
  on_quit(:all) do
    flash[:notice] = 'User signup wizard canceled'
  end
  on_submit_and_return(:account) do
    flash[:notice] = 'User signup successful'
  end
  on_errors(:account) do
    @user_signup_in3_pages[:password] = ''
    @user_signup_in3_pages[:password_confirmation] = ''
  end
  on_help(:all) do
    flash[:notice] = "'Help' was pressed"
    render_and_return  # a wizard helper method
  end
  
end
