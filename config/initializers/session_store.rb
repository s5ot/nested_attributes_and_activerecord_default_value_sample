# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nest_sample_session',
  :secret      => 'a1e895d3c76abd58602097dcc16b31b4c0921d0d208deaebaff6d6033a05b94d53eb7f2879dfb52a28774f877fb618ba4390d07ea921c5ddd2630b050138d390'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
