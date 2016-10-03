OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,  ENV["APP_ID"], ENV["APP_SECRET"]#, {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

    # scope: 'name,email,friends', display: 'popup'
end


OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,  ENV["APP_ID"], ENV["APP_SECRET"], FACEBOOK_CONFIG['secret'] {:scope => 'user_friends, email, public_profile' , :client_options => {:ssl => {:ca_file => '/usr/lib/ssl/certs/ca-certificates.crt'}}}

    # scope: 'name,email', display: 'popup'
end
