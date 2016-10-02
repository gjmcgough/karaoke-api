OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ['1602849213349267'], ['f796988b1903a18c4776936a25e1dc9a'], client_options: {
    :ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}
    # scope: 'name,email,friends', display: 'popup'
end
