# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
PoundBackend::Application.config.secret_key_base = 'ffc4bc3025485d6e5e7d9aac8e20f8cd276abe174c607502b11400e3f12a248dad52674e9626c58e50de2e4e7d1c07a8ec32113144ba14accbd72b56e025a53a'
