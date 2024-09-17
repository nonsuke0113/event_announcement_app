OmniAuth.config.allowed_request_methods = [:post, :get]

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, 'Ov23lienUdBNUUh6f2Uj', '41afd7d05faffbd7347e7bd39c82659fdad4388a'
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end