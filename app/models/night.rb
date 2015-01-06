# == Schema Information
#
# Table name: nights
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  night      :date
#  created_at :datetime
#  updated_at :datetime
#

class Night < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true, numericality: true
  validates :user_id, uniqueness: { scope: :night }
end
