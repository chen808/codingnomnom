class Content < ActiveRecord::Base
  belongs_to :user
  belongs_to :language
  has_many :likes

  validates :title, presence: true, length: {minimum: 8}
	
end
