class Blog < ApplicationRecord
	has_many :posts
	has_many :owners
	has_many :comments, as: :commentable
end
