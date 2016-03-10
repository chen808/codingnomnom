class Content < ActiveRecord::Base
  belongs_to :user
  belongs_to :languages

	validates :title, presence: true, length: {minimum: 8}
	
end
