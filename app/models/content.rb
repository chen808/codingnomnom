class Content < ActiveRecord::Base
  belongs_to :users


	validates :title, presence: true, length: {minimum: 8}
	
end
