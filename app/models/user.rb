class User < ActiveRecord::Base
  has_one :playlist
  belongs_to :party
  # has_secure_password

  # def self.from_omniauth(auth)
  #   where(auth.slice(:provider, :uid)).first_or_initialize do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.name = auth.info.name
  #     user.oauth_token = auth.credentials.token
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     user.save!
  #   end
  # end


  def self.from_omniauth(auth_hash)
    where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create do |user|
      user.provider = auth_hash.provider
      user.uid = auth_hash.uid
      user.username = auth_hash.info.name
      user.oauth_token = auth_hash.credentials.token
      user.oauth_expires_at = Time.at(auth_hash.credentials.expires_at)
      user.save!
    end
  end

  def facebook
    @facebook = Koala::Facebook::API.new(oauth_token)
  end

end


