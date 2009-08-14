class UserSignup < User

  validation_group :name, :fields=>[:first_name, :last_name]
  validation_group :info, :fields=>[:degree, :status]
  validation_group :contact, :fields=>[:email, :mobile]
  validation_group :account, :fields=>[:username, :password, :password_confirmation]

end
