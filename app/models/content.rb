class Content < ActiveRecord::Base
  belongs_to :users


	validates :title, :language,  presence: true
	
end
