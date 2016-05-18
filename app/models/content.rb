class Content < ActiveRecord::Base
  belongs_to :user
  belongs_to :language
  has_many :likes
  has_many :content2s, :dependent => :destroy

  validates :title, presence: true, length: {minimum: 8}
	
end
