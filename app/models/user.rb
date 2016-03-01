class User < ActiveRecord::Base
	has_many :contents
  	has_secure_password
end
