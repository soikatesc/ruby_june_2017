class Post < ApplicationRecord
  belongs_to :blog
  has_many :messages
  validates :title, :content, presence: true
  validates :title, :content, length: { in: 2..20}
end
