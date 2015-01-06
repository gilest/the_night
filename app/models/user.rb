class User < ActiveRecord::Base
  has_many :nights

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def is_partying_on?(night)
    nights.exists?(night: night)
  end

  def night_for(night)
    nights.find_by(night: night)
  end

end
