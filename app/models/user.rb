class User < ApplicationRecord
  validates :email, presence: true

  def flat_key
    # will make dynamic later
    ENV['FLAT_KEY']
  end

  def self.others_near_me(zip_list)
    User.where(zip: zip_list)
  end
end
