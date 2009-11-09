# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_funding_session',
  :secret      => 'cc1bca06bafeb193438163d68538b012a051a5cac796b5020cb4f3833572eff5b5b50785e2ad2d0a7115bdee09c2fe9524a05cfad6f630ec1e9fb07453759ccb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
