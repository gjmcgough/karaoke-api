OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1602849213349267', 'f796988b1903a18c4776936a25e1dc9a', {scope: "email,user_friends", :client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end


# OmniAuth.config.logger = Rails.logger

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook,  ENV["APP_ID"], ENV["APP_SECRET"], {:scope => 'user_friends, email, public_profile' , :client_options => {:ssl => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}}

#     # scope: 'name,email', display: 'popup'
# end
