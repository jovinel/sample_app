# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
SampleApp::Application.config.secret_token = '73292f1c487ff3224b942f602c1a8523fa4149333a461168a0540c4e73bbcf08e86f6b9e870b6da06f52141392a001b5b11044825e194c42794e78a0b4a6ff41'



=begin
rescue Exception => e
	
end
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		#Use the existing token.
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token_file.
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

SampleApp::Application.config.secret_key_base = secure_token 

=end
