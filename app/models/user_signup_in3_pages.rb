class UserSignupIn3Pages < User

  validation_group :info, :fields=>[:first_name, :last_name, :degree, :status]
  validation_group :contact, :fields=>[:email, :mobile]
  validation_group :account, :fields=>[:username, :password, :password_confirmation]

end
