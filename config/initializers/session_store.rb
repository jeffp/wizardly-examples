# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_examples_session',
  :secret      => '74a74168bae94f270d8e2cc9b4d269f8053a7cd9e2d348d51399c2cccad7ab129b3189a29a7c97436aa443b2f87f480e7322aca8b78a1a4fdba774c087e7fd87'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
