OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1541839836087425', '7c761dbe002385c851d00a88bbb5f62d'
end