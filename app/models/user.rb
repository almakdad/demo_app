class User < ActiveRecord::Base
  has_many :translationposts
end
