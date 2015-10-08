Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'App ID', 'App Secret'
  on_failure { |env| AuthenticationsController.action(:failure).call(env) }
end
