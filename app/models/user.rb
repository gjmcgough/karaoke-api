class User < ActiveRecord::Base
  has_one :playlist
  belongs_to :party, option: true
end