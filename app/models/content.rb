class Content < ActiveRecord::Base
  belongs_to :user
  belongs_to :language

	validates :title, presence: true, length: {minimum: 8}
	
end
