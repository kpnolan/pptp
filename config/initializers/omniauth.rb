Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :google_oauth2, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  provider :google_oauth2, '183127209510-9lqmugifojriqlh1losb870qetmd4t7g.apps.googleusercontent.com', 'SpskR4ORaGATnZrlztEl4Xyx'
end
