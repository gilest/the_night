class User < ActiveRecord::Base
  has_many :nights

  def is_partying_on?(night)
    nights.exists?(night: night)
  end

  def night_for(night)
    nights.find_by(night: night)
  end

end
