OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :facebook, '1532898173648258', 'ade5eae11b0d003dc006f37e117fadf9'
  else
    provider :facebook, '1541839836087425', '7c761dbe002385c851d00a88bbb5f62d'
  end
end