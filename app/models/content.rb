class Content < ActiveRecord::Base
  belongs_to :user

	# validates :title, presence: true, length: {minimum: 8}
	
end
