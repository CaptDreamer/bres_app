class Blogpost < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }
	validates :subject, presence: true
	validates :content, presence: true
	validates :user_id, presence: true
	self.per_page = 5
end
