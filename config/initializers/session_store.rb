# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_carbonazo_session',
  :secret      => 'caafeaa02540b987076d49223326326f93183b93d00cf00c7ae99f7d8bf8c09dc9fe123370b290af0b218d6d9a53c40d8d6ecf62af72b0c032de2f2a215634c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
