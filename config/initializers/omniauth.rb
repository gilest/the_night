OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1532898173648258', 'ade5eae11b0d003dc006f37e117fadf9'
end