class Message < ApplicationRecord
  belongs_to :post
  validates :author, :message, presence: true
  validates :message, length: { in: 2..3}
end
